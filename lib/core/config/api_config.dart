class ApiConfig {
  static const String baseApiUrl = String.fromEnvironment('BASE_API_URL');

  static const String graphqlEndpoint = '$baseApiUrl/graphql';
}
