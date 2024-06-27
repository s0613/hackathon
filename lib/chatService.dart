import 'dart:convert';
import 'package:http/http.dart' as http;

class ChatService {
  final String apiUrl = 'http://localhost:8080/api/generate-text2';

  Future<String> sendMessage(String message) async {
    final response = await http.post(
      Uri.parse(apiUrl),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'response': message,
      }),
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body)['response'];
    } else {
      throw Exception('Failed to load response');
    }
  }
}
