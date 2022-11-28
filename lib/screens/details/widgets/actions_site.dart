import 'package:flutter/material.dart';

class ActionsSite extends StatelessWidget {
  const ActionsSite({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: const [
        _ItemAction(iconAction: Icons.call, titleAction: "Call"),
        _ItemAction(iconAction: Icons.send, titleAction: "Route"),
        _ItemAction(iconAction: Icons.share, titleAction: "Share"),
      ],
    );
  }
}

class _ItemAction extends StatelessWidget {
  const _ItemAction({
    Key? key,
    required this.titleAction,
    required this.iconAction,
  }) : super(key: key);

  final String titleAction;
  final IconData iconAction;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Icon(
            iconAction,
            color: Colors.blue,
          ),
          Text(
            titleAction,
            style: const TextStyle(color: Colors.blue),
          )
        ],
      ),
    );
  }
}
