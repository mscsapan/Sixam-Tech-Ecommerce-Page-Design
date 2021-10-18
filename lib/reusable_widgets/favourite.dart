import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sixam_tech_assignment/app_colors/app_colors.dart';

class Favourite extends StatelessWidget {
  const Favourite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35.0,
      width: 35.0,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.grey[200], borderRadius: BorderRadius.circular(4.0)),
      child: const FaIcon(FontAwesomeIcons.solidHeart, color: mActiveColor),
    );
  }
}
