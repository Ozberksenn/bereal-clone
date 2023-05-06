import 'dart:convert';

import 'package:bereal/widgets/input.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../../controller/textField_controller.dart';

class RegisterView extends StatelessWidget {
  RegisterView({super.key});
  final TextFieldController inputController = Get.put(TextFieldController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Kayıt Olun',
            style: Get.theme.textTheme.headlineLarge,
          ),
          input('Name', (value) {
            inputController.name.value = value;
          }),
          input('Last Name', (value) {
            inputController.lastName.value = value;
          }),
          input('Email', (value) {
            inputController.email.value = value;
          }),
          input('Password ', (value) {
            inputController.password.value = value;
          }),
          TextButton(
              onPressed: () {
                inputController.register();
              },
              child: const Text('Send'))
        ],
      ),
    );
  }
}
