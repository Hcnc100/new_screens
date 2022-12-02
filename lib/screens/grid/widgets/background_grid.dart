import 'dart:math';

import 'package:flutter/material.dart';

class BackgroundGrid extends StatelessWidget {
  const BackgroundGrid({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xff2E305F),
            Color(0XFF202333),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
    );
  }
}
