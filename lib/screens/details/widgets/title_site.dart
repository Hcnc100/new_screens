import 'package:flutter/material.dart';

class TitleSite extends StatelessWidget {
  const TitleSite({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [_TitleAndDescription(), _IconSite()],
      ),
    );
  }
}

class _IconSite extends StatelessWidget {
  const _IconSite({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Icon(
          Icons.star_outlined,
          color: Colors.red,
        ),
        Text("41")
      ],
    );
  }
}

class _TitleAndDescription extends StatelessWidget {
  const _TitleAndDescription({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
