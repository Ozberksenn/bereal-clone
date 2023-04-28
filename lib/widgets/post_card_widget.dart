import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../controller/posts_controller.dart';
import '../themes/Themes.dart';

PostController postController = Get.put(PostController());
String defaultImage = "https://cdn-icons-png.flaticon.com/512/3135/3135715.png";

ListView postCard() {
  return ListView.builder(
      itemCount: postController.postData.length,
      itemBuilder: ((context, index) {
        dynamic startTime = postController.postData[index].createdAt;
        DateTime parse = DateTime.parse(startTime);
        String nowTime = DateFormat.Hm().format(parse);
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 14.0),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.network(
                        postController.postData[index].userId!.profilePhoto ??
                            defaultImage,
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              postController.postData[index].userId!.name ??
                                  " ",
                              style: AppTheme.light.textTheme.headlineSmall),
                          Text(
                            "Bugün : $nowTime",
                            style: AppTheme.light.textTheme.headlineSmall,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {},
                  child: const Icon(
                    Icons.more_horiz,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                postController.postData[index].postImage ?? defaultImage,
                fit: BoxFit.cover,
                width: Get.width / 1,
                height: Get.height / 1.8,
              ),
            )
          ]),
        );
      }));
}
