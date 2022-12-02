import 'package:flutter/material.dart';
import 'package:new_screens/models/destination.dart';
import 'package:new_screens/screens/screens.dart';

class AppRouters {
  static const initialRoute = "home";

  static final detailsScreen = Destination(
    name: "Details Screen",
    destination: "details",
    iconNav: Icons.ac_unit,
  );
  static final stackScreen = Destination(
    name: "Stack Screen",
    destination: "stack",
    iconNav: Icons.stacked_bar_chart_outlined,
  );
  static final gridScreen = Destination(
    name: "Grid Screen",
    destination: "grid",
    iconNav: Icons.grid_goldenratio_outlined,
  );

  static Map<String, Widget Function(BuildContext)> get routes => {
        detailsScreen.destination: (_) => const DetailsScreen(),
        stackScreen.destination: (_) => const StackScreen(),
        gridScreen.destination: (_) => const GridScreen(),
        initialRoute: (_) => const HomeScreen()
      };

  static List<Destination> get listScreens =>
      [detailsScreen, stackScreen, gridScreen];
}
