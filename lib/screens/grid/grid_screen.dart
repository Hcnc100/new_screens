import 'package:flutter/material.dart';
import 'widgets/widgets.dart';

class GridScreen extends StatelessWidget {
  const GridScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          BackgroundGrid(),
          Positioned(
            child: PinkContainer(),
            top: -100,
            left: -30,
          ),
          HomeBody()
        ],
      ),
      bottomNavigationBar: const CustomBottomNavigation(),
    );
  }
}
