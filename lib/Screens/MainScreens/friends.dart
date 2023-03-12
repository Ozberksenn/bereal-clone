import 'package:bereal/Widgets/Card.dart';
import 'package:flutter/material.dart';

class FriendsPage extends StatelessWidget {
  const FriendsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const[
          CardWidget()
        ],
      ),
    );
  }
}