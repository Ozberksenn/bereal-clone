import 'package:bereal/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/textField_controller.dart';
import '../themes/Themes.dart';

TextFieldController textController = Get.put(TextFieldController());

class AppBarField extends AppBar {
  AppBarField({Key? key, required BuildContext context})
      : super(
            key: key,
            backgroundColor: AppTheme.light.appBarTheme.backgroundColor,
            leading: const Icon(Icons.people_alt),
            title: Text(
              'BeReal.',
              style: AppTheme.light.textTheme.titleLarge,
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                    onTap: () {
                      Get.toNamed(AppPage.profile);
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.network(textController.userInfo['user']
                              ['profilePhoto'] ??
                          "https://cdn-icons-png.flaticon.com/512/3135/3135715.png"),
                    )),
              )
            ]);
}
