import 'package:flutter/material.dart';

import 'drawerScreen.dart';
import 'homeScreen.dart';

void main() {
  runApp(MaterialApp(home: Homepage()));
}

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          DrawerScreen(),
          HomeScreen(),
        ],
      ),
    );
  }
}

