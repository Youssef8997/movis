class ServerException implements Exception {
  final String msg;

  const ServerException({required this.msg});
}