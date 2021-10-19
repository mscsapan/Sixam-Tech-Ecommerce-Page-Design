import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sixam_tech_assignment/app_colors/app_colors.dart';

class BottomAppBarView extends StatelessWidget {
  const BottomAppBarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget bottomIcon({IconData? icon, bool? active = false}) {
      return InkWell(
          onTap: () {},
          splashColor: Colors.transparent,
          child: FaIcon(icon,
              color: active! ? mActiveColor : mIconColor, size: 26.0));
    }

    return BottomAppBar(
      child: SizedBox(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              bottomIcon(icon: FontAwesomeIcons.home, active: true),
              bottomIcon(icon: FontAwesomeIcons.solidHeart),
              Padding(
                padding: const EdgeInsets.only(bottom: 2.0),
                child: Container(
                    height: 74.0,
                    width: 74.0,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                        color: mActiveColor, shape: BoxShape.circle),
                    child: const FaIcon(FontAwesomeIcons.shoppingCart,
                        size: 30.0, color: Colors.white)),
              ),
              bottomIcon(icon: FontAwesomeIcons.solidBookmark),
              bottomIcon(icon: FontAwesomeIcons.bars)
            ],
          ),
        ),
      ),
    );
  }
}
