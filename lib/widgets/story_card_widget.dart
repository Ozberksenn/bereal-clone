import 'package:bereal/themes/Themes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StoryCardWidget extends StatelessWidget {
  StoryCardWidget({super.key});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ListView(
      children: storyCard,
    );
  }

  List<Widget> storyCard = List.generate(
      10,
      (index) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 14.0),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/profile.png',
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Profil Name',
                                style: AppTheme.light.textTheme.headlineSmall),
                            Text(
                              '10 dakika gecikti',
                              style: AppTheme.light.textTheme.headlineSmall,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.more_horiz,
                    color: Colors.white,
                  )
                ],
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  'assets/images/post.jpg',
                  fit: BoxFit.cover,
                  width: Get.width / 1,
                  height: Get.height / 1.8,
                ),
              )
            ]),
          ));
}
