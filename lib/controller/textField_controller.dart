import 'dart:convert';
import 'package:bereal/routes/routes.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class TextFieldController extends GetxController {
  var name = ''.obs;
  var lastName = ''.obs;
  var email = ''.obs;
  var password = ''.obs;
  var profilePhoto =
      'https://cdn4.iconfinder.com/data/icons/small-n-flat/24/user-512.png'.obs;
  var userInfo = {}.obs;

  Future<void> register() async {
    const registerUrl = 'http://localhost:8080/api/register';
    final registerData = {
      "name": name.value,
      "lastName": lastName.value,
      "email": email.value,
      "password": password.value,
      "profilePhoto": profilePhoto.value
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
      userInfo.value = jsonDecode(response.body);
      print(userInfo.value);

      Get.toNamed(AppPage.main);
    } else {
      print('Error: ${response.statusCode}');
      print(response.body);
      print('hatalı giriş');
    }
  }
}
