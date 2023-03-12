import 'package:bereal/Themes/Themes.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
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
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Profil Name',style: AppTheme.light.textTheme.headlineSmall),
                    Text('10 dakika gecikti',style: AppTheme.light.textTheme.headlineSmall,)
                  ],
                ),
              ],
            ),
            const Icon(Icons.more_horiz,color: Colors.white,)
          ],
        ),
        Image.asset(
          'assets/images/post.jpg',
          fit: BoxFit.cover,
          width: width / 1,
          height: height / 3,
        )
      ]),
    );
  }
}
