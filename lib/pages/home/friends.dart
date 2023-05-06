import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/posts_controller.dart';
import '../../widgets/post_card_widget.dart';

class FriendsPage extends StatelessWidget {
  FriendsPage({super.key});

  @override
  Widget build(BuildContext context) {
    PostController postController = Get.put(PostController());
    // ignore: unrelated_type_equality_checks
    return Obx(() => postController.isLoading == true
        ? Scaffold(body: postCard())
        : const Center(child: CircularProgressIndicator()));
  }
}
