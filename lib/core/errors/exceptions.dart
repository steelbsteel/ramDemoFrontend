class AppServerException implements Exception {
  const AppServerException({required this.message, this.code});

  final String message;
  final String? code;

  @override
  String toString() => 'AppServerException(message: $message, code: $code)';
}

class CacheException implements Exception {
  const CacheException({this.message});
  final String? message;
}
