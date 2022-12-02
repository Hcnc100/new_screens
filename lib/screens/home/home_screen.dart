import 'package:flutter/material.dart';
import 'package:new_screens/models/destination.dart';
import 'package:new_screens/router/app_route.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final listDestination = AppRouters.listScreens;
    return Scaffold(
      appBar: AppBar(
        title: const Text("List Screens"),
      ),
      body: ListView.separated(
        itemCount: listDestination.length,
        separatorBuilder: (_, __) => const Divider(),
        itemBuilder: (context, index) =>
            _ItemNavigation(destination: listDestination[index]),
      ),
    );
  }
}

class _ItemNavigation extends StatelessWidget {
  const _ItemNavigation({
    Key? key,
    required this.destination,
  }) : super(key: key);

  final Destination destination;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(destination.name),
      trailing: const Icon(Icons.arrow_forward_ios_outlined),
      onTap: () => Navigator.pushNamed(context, destination.destination),
    );
  }
}
