import 'package:bereal/controller/camera_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({super.key});

  @override
  Widget build(BuildContext context) {
    CameraController controller = Get.put(CameraController());
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                controller.getImage(ImageSource.camera);
              },
              child: const Text('BeReal Çek'))
        ],
      ),
    );
  }
}
