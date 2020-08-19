import 'package:carousel_app_scaffold/simple_logger.dart';
import 'package:http/http.dart' as http;

import '../env.dart';

class HttpService {
  final log = getLogger('HttpService');

  static String baseUrl = environment['baseUrl'];
  static String basePath = environment['basePath'];

  HttpService() {
    log.i('on $baseUrl$basePath');
  }

  Future<http.Response> post(
    String endpoint, {
    Map<String, String> headers,
    dynamic body,
  }) async {
    var response = await http.post(
      baseUrl + basePath + endpoint,
      headers: headers,
      body: body,
    );

    if (response.statusCode != 200) {
      print('error on endpoint');
      print(response.statusCode);
      print(response.body);
    }

    return response;
  }

  Future<http.Response> get(
    String endpoint,
  ) async {
    log.i('$endpoint called');
    var response = await http.get(baseUrl + basePath + endpoint);

    if (response.statusCode != 200) {
      print('error on endpoint');
      print(response.statusCode);
      print(response.body);
    }

    return response;
  }
}
