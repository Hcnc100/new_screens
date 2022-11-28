import 'package:flutter/material.dart';
import 'package:new_screens/models/destination.dart';
import 'package:new_screens/screens/screens.dart';

class AppRouters {
  static final detailsScreen = Destination(
      name: "Details", destination: "details", iconNav: Icons.ac_unit);

  static Map<String, Widget Function(BuildContext)> get routes =>
      {detailsScreen.destination: (_) => const DetailsScreen()};
}
