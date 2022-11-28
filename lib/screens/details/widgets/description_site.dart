import 'package:flutter/material.dart';

class DescriptionSite extends StatelessWidget {
  const DescriptionSite({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Text(
        "Dolor esse cupidatat in anim cupidatat veniam est quis reprehenderit. Nostrud Lorem tempor esse velit non nulla nulla reprehenderit reprehenderit et excepteur. Consectetur Lorem dolor sit ad ex reprehenderit ut eiusmod anim id eiusmod. Sint ullamco veniam deserunt est enim ut ad. Ex tempor nulla aute velit dolor fugiat cillum reprehenderit est consectetur quis.",
        textAlign: TextAlign.justify,
      ),
    );
  }
}
