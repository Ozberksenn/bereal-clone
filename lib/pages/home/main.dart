import 'package:bereal/themes/Themes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import '../../controller/camera_controller.dart';
import '../../widgets/appbar_widget.dart';
import 'discover.dart';
import 'friends.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});
  CameraController controller = Get.put(CameraController());

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBarField(context: context),
        body: Column(
          children: [
            Container(
              color: Colors.transparent,
              child: TabBar(
                  padding: const EdgeInsets.symmetric(horizontal: 50.0),
                  indicatorColor: Colors.black,
                  labelColor: AppTheme.light.tabBarTheme.labelColor,
                  tabs: const [
                    Tab(
                      text: 'Arkadaşlarım',
                    ),
                    Tab(
                      text: 'Keşif',
                    )
                  ]),
            ),
            Expanded(
                child: TabBarView(children: [FriendsPage(), DiscoverPage()]))
          ],
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              controller.getImage(ImageSource.camera);
            },
            backgroundColor: Colors.red,
            child: const Icon(Icons.camera_alt_outlined)),
      ),
    );
  }
}
