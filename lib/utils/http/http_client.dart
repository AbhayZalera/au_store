import 'dart:convert';
import 'package:http/http.dart'as http;


class AHttpHelper{
  static const String _baseUrl =''; // Add Here Api Url

  //Helper Method to make a GET request
  static Future<Map<String, dynamic>> get(String endpoint) async {
    final response = await http.get(Uri.parse('$_baseUrl/$endpoint'));
    return _handleResponse(response);
  }

  //Helper Method to make a POST request
  static Future<Map<String, dynamic>> post(String endpoint, dynamic data) async{
    final response = await http.post(
      Uri.parse('$_baseUrl/$endpoint'),
      headers: {'Content-Type':'application/json'},
      body: json.encode(data),
    ) ;
    return _handleResponse(response);
  }

  //Helper method to make a PUT request
  static Future<Map<String, dynamic>> put(String endpoint, dynamic data)async{
    final response = await http.delete(Uri.parse('$_baseUrl/$endpoint'));
    return _handleResponse(response);
  }

  //Handle the Http response
  static Map<String, dynamic> _handleResponse(http.Response response){
    if(response.statusCode == 200){
      return json.decode(response.body);
    }
    else{
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  }


}