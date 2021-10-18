import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sixam_tech_assignment/app_colors/app_colors.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        const FaIcon(FontAwesomeIcons.solidBell, color: Color(0xFF000000)),
        Positioned(
          top: -1.0,
          right: -2.0,
          child: Container(
            height: 14.0,
            width: 14.0,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                height: 10.0,
                width: 10.0,
                decoration:
                    const BoxDecoration(color: mRed, shape: BoxShape.circle),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
