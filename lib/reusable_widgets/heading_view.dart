import 'package:flutter/material.dart';
import 'package:sixam_tech_assignment/styling/styling.dart';

class HeadingView extends StatelessWidget {
  final String leftTitle;
  final String? rightView;
  const HeadingView(
      {Key? key, required this.leftTitle, this.rightView = 'View All'})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(leftTitle, style: headingStyle()),
          Text(rightView!, style: vieAllStyle()),
        ],
      ),
    );
  }
}
