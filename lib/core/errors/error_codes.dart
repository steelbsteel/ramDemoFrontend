abstract final class ErrorCodes {
  static const int httpTooManyRequests = 429;
  static const int httpForbidden = 403;
  static const int httpInternalServerError = 500;

  static const String gqlRateLimited = 'RATE_LIMITED';
  static const String gqlRateLimit = 'RATE_LIMIT';
  static const String gqlTooManyRequests = 'TOO_MANY_REQUESTS';
  static const String gqlTooManyAttempts = 'TOO_MANY_ATTEMPTS';
  static const String gqlAuthTooManyAttempts = 'AUTH_TOO_MANY_ATTEMPTS';

  static bool isHttpCode(String? rawCode, int targetCode) =>
      int.tryParse(rawCode ?? '') == targetCode;
}
