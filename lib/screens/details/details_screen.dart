import 'package:flutter/material.dart';
import 'widgets/widgets.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: const [
            HeaderImage(),
            SizedBox(height: 10),
            TitleSite(),
            SizedBox(height: 20),
            ActionsSite(),
            SizedBox(height: 20),
            DescriptionSite()
          ],
        ),
      ),
    );
  }
}
