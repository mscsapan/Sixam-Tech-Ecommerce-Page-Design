import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sixam_tech_assignment/app_colors/app_colors.dart';
import 'package:sixam_tech_assignment/styling/styling.dart';

import 'discount_message.dart';

class AllRestaurantInfo extends StatelessWidget {
  final String logo;
  final String name;
  final String moto;
  final String type;
  final int index;

  const AllRestaurantInfo({
    Key? key,
    required this.logo,
    required this.name,
    required this.moto,
    required this.type,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: SizedBox(
        height: screenHeight * 0.2,
        //width: screenWidth,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  height: screenHeight * 0.18,
                  width: screenWidth * 0.45,
                  //color: Colors.red,
                  padding: const EdgeInsets.all(10.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Stack(
                      children: [
                        Image.asset(logo,
                            fit: BoxFit.cover,
                            height: screenHeight * 0.18,
                            width: screenWidth * 0.45),
                        index == 2
                            ? const Positioned(
                                top: 12.0,
                                left: 0.0,
                                child: DiscountOffer(message: '30% Off'),
                              )
                            : Container(),
                        index == 3
                            ? const Positioned(
                                top: 12.0,
                                left: 0.0,
                                child: DiscountOffer(message: '30% Off'),
                              )
                            : Container()
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.12,
                  width: screenWidth * 0.40,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(name,
                          style: headingStyle().copyWith(fontSize: 18.0)),
                      Text(
                        moto,
                        style: addressStyle().copyWith(
                            color: const Color(0xFF888888), fontSize: 14.0),
                      ),
                      Text(type,
                          style: addressStyle().copyWith(
                              color: const Color(0xFF888888), fontSize: 14.0)),
                      Row(
                        children: List.generate(
                          5,
                          (index) => const Icon(
                            Icons.star,
                            size: 18,
                            color: mActiveColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                FaIcon(FontAwesomeIcons.heart,
                    color: mSubTitleColor.withOpacity(1.0)),
              ],
            ),
            const Divider(
              height: 14.0,
              color: Color(0xFFE2E2E2),
              //color: Colors.white,
              thickness: 3.0,
            ),
          ],
        ),
      ),
    );
  }
}
