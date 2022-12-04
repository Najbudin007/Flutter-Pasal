import 'dart:convert';
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:pasal/app/constants/app.constants.dart';
import 'package:http/http.dart' as http;
import 'package:pasal/models/token.dart';

class ApiAuthProvider {
  void _printError(error, StackTrace stacktrace) {
    debugPrint('error: $error & stacktrace: $stacktrace');
  }

  Future<Token?> login(String title) async {
    try {
      final response = await http.post(
        Uri.parse('${baseUrl}auth/login'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(
            <String, String>{"username": "test", "password": "test@1"}),
      );

      if (response.statusCode == 200) {
        log("logged in ${response.body}");
        return Token.fromJson(jsonDecode(response.body));
      } else {
        throw Exception('Failed to login.');
      }
    } catch (e, stacktrace) {
      _printError(e, stacktrace);
    }
    return null;
  }
}
