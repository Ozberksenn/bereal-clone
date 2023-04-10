import 'package:bereal/controller/dateController.dart';
import 'package:bereal/themes/Themes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widget/profile_appbar_widget.dart';
import 'widget/profile_header_info.dart';

final DateController controller = Get.put(DateController());

class ProfileView extends StatelessWidget {
  ProfileView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ProfileAppBarField(
        context: context,
      ),
      body: ListView(
        children: [
          profileInfo(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Anıların',
                  style: AppTheme.light.textTheme.headlineLarge,
                ),
                Text(
                  'Sadece Sana Görünür',
                  style: AppTheme.light.textTheme.headlineSmall,
                )
              ],
            ),
          ),
          dateContainer()
        ],
      ),
    );
  }
}

Container dateContainer() {
  return Container(
    decoration: BoxDecoration(
        color: Color.fromARGB(255, 60, 61, 62),
        borderRadius: BorderRadius.circular(20.0)),
    width: Get.width / 1.1,
    height: Get.height / 3.2,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            'Son 10 gün',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
        Wrap(
          children: sortDays,
        )
        // Container(
        //     width: Get.width / 1,
        //     height: Get.height / 5,
        //     color: Colors.white,
        //     child: Text(controller.lastTenDays.value.join(' ')))

        // ElevatedButton(
        //     onPressed: () {
        //       controller.getDate();
        //     },
        //     child: Text('asd'))
      ],
    ),
  );
}

List<Widget> sortDays = List.generate(
    controller.lastTenDays.value.length,
    (index) => Obx(() {
          final isLastIndex = index == controller.lastTenDays.value.length - 1;
          final isFirstIndex = index == controller.lastTenDays.value[0];
          return Container(
              margin: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Text(controller.lastTenDays.value[index].toString(),
                      style: isLastIndex
                          ? const TextStyle(
                              fontSize: 24,
                              color: Color.fromARGB(255, 45, 162, 88))
                          : const TextStyle(fontSize: 24, color: Colors.white)),
                  Text(
                    controller.lastTenDaysName.value[index].toString(),
                    style: const TextStyle(color: Colors.blueAccent),
                  )
                ],
              ));
        }));
