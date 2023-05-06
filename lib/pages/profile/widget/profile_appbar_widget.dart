import 'package:flutter/material.dart';

import '../../../themes/Themes.dart';

class ProfileAppBarField extends AppBar {
  ProfileAppBarField({Key? key, required BuildContext context})
      : super(
            key: key,
            backgroundColor: AppTheme.light.appBarTheme.backgroundColor,
            title: Text(
              'Profile',
              style: AppTheme.light.textTheme.titleLarge,
            ),
            actions: [const Icon(Icons.more_horiz)]);
}
