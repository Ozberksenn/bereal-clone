import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/textField_controller.dart';
import '../../../themes/Themes.dart';

final TextFieldController textController = Get.put(TextFieldController());
String defaultImage = "https://cdn-icons-png.flaticon.com/512/3135/3135715.png";

Column profileInfo() {
  return Column(
    children: [
      Image.network(
        textController.userInfo['user']['profilePhoto'] ?? defaultImage,
        width: Get.width / 3,
        height: Get.height / 6,
      ),
      Text(
        textController.userInfo['user']['name'] ?? '',
        style: AppTheme.light.textTheme.headlineMedium,
      ),
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: Text(
          textController.userInfo['user']['email'] ?? '',
          style: AppTheme.light.textTheme.headlineSmall,
        ),
      )
    ],
  );
}
