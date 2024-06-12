import 'package:dio/dio.dart';

class ApiService {
  final String _baseLink = 'https://www.googleapis.com/books/v1/';
  final Dio dio;

  ApiService({required this.dio});

  Future<Map<String, dynamic>> get({required endPoint}) async {
    final response = await dio.get('$_baseLink$endPoint');
    return response.data;
  }
}
