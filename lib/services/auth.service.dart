import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AuthService {
  final _storage = const FlutterSecureStorage();

  /// Login function - Returns response only
  Future<Map<String, dynamic>> login(String email, String password) async {
    final url = Uri.parse('${dotenv.env['API_URL']}/auth/login');

    try {
      final response = await http.post(
        url,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({'email': email, 'password': password}),
      );
      final data = jsonDecode(response.body);
      return {
        'success': response.statusCode == 201,
        'statusCode': response.statusCode,
        'token': data['access_token'],
        'user': data['user'],
        'message': data['message'] ?? 'Login failed',
      };
    } catch (e) {
      return {'success': false, 'message': 'Login failed'};
    }
  }

  /// Stores user data and access token securely
  Future<void> storeUserCredentials(
    String token,
    Map<String, dynamic> user,
  ) async {
    await _storage.write(key: 'access_token', value: token);
    await _storage.write(key: 'user', value: jsonEncode(user));
  }

  /// Fetch stored token
  Future<String?> getToken() async {
    return await _storage.read(key: 'access_token');
  }

  /// Fetch stored user
  Future<Map<String, dynamic>?> getUser() async {
    final String? userData = await _storage.read(key: 'user');
    return userData != null ? jsonDecode(userData) : null;
  }

  /// Logout user by deleting stored credentials
  Future<void> logout() async {
    await _storage.delete(key: 'access_token');
    await _storage.delete(key: 'user');
  }
}
