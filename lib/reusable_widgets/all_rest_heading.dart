import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sixam_tech_assignment/app_colors/app_colors.dart';
import 'package:sixam_tech_assignment/styling/styling.dart';

class AllRestHeading extends StatelessWidget {
  const AllRestHeading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('All Restaurants', style: headingStyle()),
              const SizedBox(height: 2.0),
              Text(
                '200+ Near You',
                style: headingStyle().copyWith(
                    fontWeight: FontWeight.w400,
                    fontSize: 14.0,
                    color: mIconColor),
              )
            ],
          ),
          //const FaIcon(FontAwesomeIcons.slidersH, color: mHeadingColor)
          Theme(
            data: Theme.of(context).copyWith(
                dividerTheme: const DividerThemeData(color: Colors.grey)),
            child: PopupMenuButton<String>(
              icon:
                  const FaIcon(FontAwesomeIcons.slidersH, color: mHeadingColor),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              itemBuilder: (context) => [
                PopupMenuItem(child: Text('All', style: menuItemStyle())),
                const PopupMenuDivider(height: 4.0),
                PopupMenuItem(
                    child: Text('Take Away', style: subMenuItemStyle())),
                PopupMenuItem(
                    child: Text('Home Delivery', style: subMenuItemStyle())),
              ],
            ),
          )
        ],
      ),
    );
  }
}
