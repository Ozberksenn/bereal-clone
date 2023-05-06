import 'package:bereal/controller/posts_controller.dart';
import 'package:bereal/model/posts.dart';
import 'package:bereal/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import '../../controller/textField_controller.dart';
import '../../widgets/input.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});
  final TextFieldController inputController = Get.put(TextFieldController());
  // PostController postController = Get.put(PostController());
  @override
  Widget build(BuildContext context) {
    // debugPrint(postController.posts[0].postImage.toString());
    return Scaffold(
      appBar: AppBar(),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text('BeReal', style: Get.theme.textTheme.headlineLarge),
        input('Email', (value) {
          inputController.email.value = value;
        }),
        input('Password', (value) {
          inputController.password.value = value;
        }),
        SizedBox(
            width: Get.width / 1.05,
            child: ElevatedButton(
                onPressed: () {
                  inputController.login();
                },
                child: const Text('Giriş Yap'))),
        TextButton(
            onPressed: () {
              Get.toNamed(AppPage.register);
            },
            child: const Text('Kayıt Olun')),
        TextButton(onPressed: () {}, child: const Text('Parolamı Unuttum ?')),
      ]),
    );
  }
}
