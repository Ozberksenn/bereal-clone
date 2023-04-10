import 'package:bereal/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../themes/Themes.dart';

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
                    child: Image.asset('assets/images/profile.png')),
              )
            ]);
}
