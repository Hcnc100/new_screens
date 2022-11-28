import 'package:flutter/material.dart';

import 'widgets/widgets.dart';

class StackScreen extends StatelessWidget {
  const StackScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: MainView());
  }
}

class MessageView extends StatelessWidget {
  const MessageView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Text("Bienvenido")),
    );
  }
}
