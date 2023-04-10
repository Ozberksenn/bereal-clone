import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../themes/Themes.dart';

Column profileInfo() {
  return Column(
    children: [
      Image.asset(
        'assets/images/profile.png',
        width: Get.width / 3,
        height: Get.height / 6,
      ),
      Text(
        'Ozberk',
        style: AppTheme.light.textTheme.headlineMedium,
      ),
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: Text(
          'ozberksen',
          style: AppTheme.light.textTheme.headlineSmall,
        ),
      )
    ],
  );
}
