import 'package:dio/dio.dart';

class ApiKeyInterceptor extends Interceptor {
  // Retrieve the API key from environment variables
  // Make sure to set the API_KEY environment variable during build time
  // For example: flutter build apk --dart-define=API_KEY=your_api_key_here
  static const String _apiKey = String.fromEnvironment('API_KEY');

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.queryParameters['api_key'] = _apiKey;
    super.onRequest(options, handler);
  }
}
