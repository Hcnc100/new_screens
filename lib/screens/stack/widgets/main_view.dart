import 'package:flutter/material.dart';

class MainView extends StatelessWidget {
  const MainView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [_ImageBackground(), _InnerContainer()],
    );
  }
}

class _InnerContainer extends StatelessWidget {
  const _InnerContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      fontSize: 45,
      color: Colors.white,
      fontWeight: FontWeight.w600,
    );
    return SizedBox(
      width: double.infinity,
      child: SafeArea(
        bottom: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "11°",
              style: textStyle,
            ),
            const Text(
              "Miercoles",
              style: textStyle,
            ),
            Expanded(child: Container()),
            const Icon(
              Icons.keyboard_arrow_down,
              size: 120,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}

class _ImageBackground extends StatelessWidget {
  const _ImageBackground({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff30BAD6),
      alignment: Alignment.topCenter,
      width: double.infinity,
      child: const Image(
        image: AssetImage("assets/scroll.png"),
        fit: BoxFit.fitWidth,
        width: double.infinity,
      ),
    );
  }
}
