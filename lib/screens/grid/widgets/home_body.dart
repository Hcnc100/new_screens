import 'dart:ui';

import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          _Titles(),
          _CardTable(),
        ],
      ),
    );
  }
}

class _CardTable extends StatelessWidget {
  const _CardTable({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(
          children: [
            _SingleCard(
              color: Colors.blue,
              icon: Icons.window,
              title: "General",
            ),
            _SingleCard(
              color: Colors.indigo,
              icon: Icons.bus_alert,
              title: "Transport",
            ),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(
              color: Colors.pink,
              icon: Icons.window,
              title: "Shopping",
            ),
            _SingleCard(
              color: Colors.red,
              icon: Icons.movie,
              title: "Bill",
            ),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(
              color: Colors.cyanAccent,
              icon: Icons.cloud,
              title: "Cloud",
            ),
            _SingleCard(
              color: Colors.green,
              icon: Icons.calendar_today,
              title: "Calendar",
            ),
          ],
        ),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  const _SingleCard({
    Key? key,
    required this.icon,
    required this.color,
    required this.title,
  }) : super(key: key);

  final IconData icon;
  final Color color;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(62, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(20),
            ),
            child: _ContainerItemCard(icon: icon, color: color, title: title),
          ),
        ),
      ),
    );
  }
}

class _ContainerItemCard extends StatelessWidget {
  const _ContainerItemCard({
    Key? key,
    required this.icon,
    required this.color,
    required this.title,
  }) : super(key: key);

  final IconData icon;
  final Color color;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: color,
          child: Icon(
            icon,
            color: Colors.white,
            size: 35,
          ),
          radius: 30,
        ),
        const SizedBox(height: 10),
        Text(title, style: TextStyle(color: color, fontSize: 18))
      ],
    );
  }
}

class _Titles extends StatelessWidget {
  const _Titles({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Classify transaccion",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Classify this transaction into a particular category",
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
