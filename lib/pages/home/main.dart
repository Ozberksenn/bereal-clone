import 'package:bereal/themes/Themes.dart';
import 'package:flutter/material.dart';

import '../../widgets/appbar_widget.dart';
import 'discover.dart';
import 'friends.dart';

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
              color: Colors.transparent,
              child: TabBar(
                  padding: const EdgeInsets.symmetric(horizontal: 90.0),
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
            const Expanded(
                child: TabBarView(children: [FriendsPage(), DiscoverPage()]))
          ],
        ),
      ),
    );
  }
}
