

import 'package:ram_demo_app/core/gen/l10n/strings.g.dart';

abstract class Failure {
  const Failure({required this.message, this.code});

  final String message;
  final String? code;

  bool get shouldApplyLocalAttemptLimit {
    if (this is NetworkFailure) return false;
    return true;
  }
}

abstract class RetryAfterFailure {
  int? get retryAfterSeconds;
}

class ServerFailure extends Failure {
  const ServerFailure({required super.message, super.code});
}

class NetworkFailure extends Failure {
  NetworkFailure({String? message, super.code})
    : super(message: message ?? t.errors.noInternet);
}

class CacheFailure extends Failure {
  CacheFailure({String? message}) : super(message: message ?? t.errors.cache);
}

class UnknownFailure extends Failure {
  UnknownFailure({String? message})
    : super(message: message ?? t.errors.unknown);
}
