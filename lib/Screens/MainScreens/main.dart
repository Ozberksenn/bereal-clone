import 'package:bereal/Screens/MainScreens/discover.dart';
import 'package:bereal/Screens/MainScreens/friends.dart';
import 'package:bereal/Themes/Themes.dart';
import 'package:flutter/material.dart';

import '../../Widgets/AppBar.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBarField(context: context),
        body: Column(
          children: [
            Container(
              color: Colors.black,
              child:  TabBar(
                  padding: const EdgeInsets.symmetric(horizontal: 90.0),
                  indicatorColor: AppTheme.light.tabBarTheme.indicatorColor,
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
            const Expanded(child: TabBarView(children: [
              FriendsPage(),
              DiscoverPage()
            ]))
          ],
        ),
      ),
    );
  }
}
