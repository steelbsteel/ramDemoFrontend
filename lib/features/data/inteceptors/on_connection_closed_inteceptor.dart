import 'package:dio/dio.dart';

class OnConnectionClosedInterceptor extends Interceptor {
  OnConnectionClosedInterceptor(this.dio);

  final Dio dio;

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    if (_isConnectionClosedError(err)) {
      try {
        final options = err.requestOptions;
        final response = await dio.fetch(options);
        return handler.resolve(response);
      } catch (e) {
        if (e is DioException) {
          return handler.next(e);
        }
      }
    }
    return handler.next(err);
  }

  bool _isConnectionClosedError(DioException err) {
    if (err.type == DioExceptionType.unknown && err.error != null) {
      final errorString = err.error.toString();
      return errorString.contains(
        'Connection closed before full header was received',
      );
    }
    return false;
  }
}
