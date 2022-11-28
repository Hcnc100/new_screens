import 'package:flutter/material.dart';

import 'widgets/widgets.dart';

class StackScreen extends StatelessWidget {
  const StackScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [
                0.5,
                0.5
              ],
              colors: [
                Color(0xff5EE8C5),
                Color(0Xff30BAD6),
              ]),
        ),
        child: PageView(
          scrollDirection: Axis.vertical,
          physics: const BouncingScrollPhysics(),
          children: const [MainView(), ButtonPage()],
        ),
      ),
    );
  }
}
