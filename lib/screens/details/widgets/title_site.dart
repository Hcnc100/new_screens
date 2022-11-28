import 'package:flutter/material.dart';

class TitleSite extends StatelessWidget {
  const TitleSite({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Oeschinen Lake CampGrouend",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            "Kandersteg, Switzerland",
            style: Theme.of(context).textTheme.caption,
          ),
        ],
      ),
      trailing: SizedBox(
        width: 40,
        child: Row(
          children: const [
            Icon(
              Icons.star_outlined,
              color: Colors.red,
            ),
            Text("41")
          ],
        ),
      ),
    );
  }
}
