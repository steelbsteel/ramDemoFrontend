import 'package:dio/dio.dart';
import 'package:graphql/client.dart';
import 'package:ram_demo_app/core/errors/exceptions.dart';
import 'package:ram_demo_app/core/errors/failures.dart';
import 'package:ram_demo_app/core/errors/result.dart';
import 'package:ram_demo_app/core/gen/l10n/strings.g.dart';
import 'package:talker/talker.dart';

mixin ErrorHandlerMixin {
  Future<Result<T, Failure>> execute<T>(Future<T> Function() action) =>
      ErrorHandler.execute(action);
}

abstract final class ErrorHandler {
  static const String _GQL_EXTENSIONS_CODE_KEY = 'code';

  static Talker? _talker;

  static set talker(Talker talker) => _talker = talker;

  static Future<Result<T, Failure>> execute<T>(
    Future<T> Function() action,
  ) async {
    try {
      final result = await action();
      return Success(result);
    } on DioException catch (e, stackTrace) {
      _talker?.handle(e, stackTrace, 'DioException in ErrorHandler');
      return FailureResult(_handleDioException(e));
    } on OperationException catch (e, stackTrace) {
      _talker?.handle(e, stackTrace, 'OperationException in ErrorHandler');
      return FailureResult(_handleGraphQLException(e));
    } on AppServerException catch (e, stackTrace) {
      _talker?.handle(e, stackTrace, 'AppServerException in ErrorHandler');
      return FailureResult(ServerFailure(message: e.message, code: e.code));
    } on CacheException catch (e, stackTrace) {
      _talker?.handle(e, stackTrace, 'CacheException in ErrorHandler');
      return FailureResult(CacheFailure(message: t.errors.cache));
    } catch (e, stackTrace) {
      _talker?.handle(e, stackTrace, 'Unknown Exception in ErrorHandler');
      return FailureResult(UnknownFailure());
    }
  }

  static Failure _handleDioException(DioException error) {
    if (error.type == DioExceptionType.connectionTimeout ||
        error.type == DioExceptionType.receiveTimeout ||
        error.type == DioExceptionType.connectionError) {
      return NetworkFailure();
    }
    final statusCode = error.response?.statusCode;
    return ServerFailure(
      message: t.errors.unknown,
      code: statusCode?.toString(),
    );
  }

  static Failure _handleGraphQLException(OperationException error) {
    final linkException = error.linkException;
    if (linkException != null) {
      // Fallback: keep network semantics for transport failures.
      if (_isNetworkTransportException(linkException)) {
        return NetworkFailure();
      }
      return ServerFailure(message: t.errors.unknown);
    }
    if (error.graphqlErrors.isNotEmpty) {
      final gqlError = error.graphqlErrors.first;
      final extensions = gqlError.extensions;
      final codeRaw = extensions?[_GQL_EXTENSIONS_CODE_KEY];
      final codeString = codeRaw?.toString();


      // Backend may return plain error messages without codes.
      // Match known templates to produce user-friendly failures.;

      return ServerFailure(message: t.errors.unknown, code: codeString);
    }
    return UnknownFailure(message: t.errors.unknown);
  }


  static bool _isNetworkTransportException(Object linkException) {
    try {
      final dynamic error = linkException;
      final Object? originalException = error.originalException as Object?;

      if (originalException is DioException) {
        return originalException.type == DioExceptionType.connectionTimeout ||
            originalException.type == DioExceptionType.receiveTimeout ||
            originalException.type == DioExceptionType.connectionError;
      }

      final message = (originalException ?? error).toString().toLowerCase();
      return message.contains('socketexception') ||
          message.contains('failed host lookup') ||
          message.contains('network is unreachable') ||
          message.contains('connection refused') ||
          message.contains('timed out');
    } catch (_) {
      return false;
    }
  }
}
