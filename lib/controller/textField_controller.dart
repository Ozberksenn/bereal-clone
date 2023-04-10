import 'dart:convert';

import 'package:bereal/routes/routes.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class TextFieldController extends GetxController {
  var name = ''.obs;
  var lastName = ''.obs;
  var email = ''.obs;
  var password = ''.obs;

  Future<void> register() async {
    const registerUrl = 'http://localhost:8080/api/register';
    final registerData = {
      "name": name.value,
      "lastName": lastName.value,
      "email": email.value,
      "password": password.value
    };
    final headers = {'Content-Type': 'application/json'};
    final response = await http.post(Uri.parse(registerUrl),
        headers: headers, body: jsonEncode(registerData));

    if (response.statusCode == 200) {
      print(response.body);
    } else {
      print('Error: ${response.statusCode}');
      print(response.body);
    }
  }

  Future<void> login() async {
    const loginUrl = 'http://localhost:8080/api/login';
    final loginData = {"email": email.value, "password": password.value};
    final headers = {'Content-Type': 'application/json'};
    final response = await http.post(Uri.parse(loginUrl),
        headers: headers, body: jsonEncode(loginData));
    if (response.statusCode == 201) {
      print(response.body);
      debugPrint('başarılı giriş');
      Get.toNamed(AppPage.main);
    } else {
      print('Error: ${response.statusCode}');
      print(response.body);
      print('hatalı giriş');
    }
  }
}
