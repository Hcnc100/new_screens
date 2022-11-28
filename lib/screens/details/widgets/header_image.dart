import 'package:flutter/material.dart';

class HeaderImage extends StatelessWidget {
  const HeaderImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const FadeInImage(
      placeholder: NetworkImage("https://picsum.photos/200"),
      image: NetworkImage("https://picsum.photos/200"),
      width: double.infinity,
      height: 200,
      fit: BoxFit.cover,
    );
  }
}
