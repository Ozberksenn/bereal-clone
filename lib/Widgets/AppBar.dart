import 'package:flutter/material.dart';

import '../Themes/Themes.dart';

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
                child: Image.asset('assets/images/profile.png'),
              )
            ]);
}
