import 'package:flutter/material.dart';
import 'package:sixam_tech_assignment/app_colors/app_colors.dart';
import 'package:sixam_tech_assignment/model/popular_restaurant_model.dart';
import 'package:sixam_tech_assignment/widgets/discount_message.dart';
import 'package:sixam_tech_assignment/styling/styling.dart';

import 'favourite.dart';

class PopularRestaurantList extends StatelessWidget {
  final String message;

  const PopularRestaurantList({Key? key, this.message = '30% Off'})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250.0,
      width: 250.0,
      child: ListView.builder(
        itemCount: restaurant.length,
        physics: const ClampingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          PopularRestaurant rest = restaurant[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                      height: 150.0,
                      width: 250.0,
                      child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(10.0),
                            topLeft: Radius.circular(10.0),
                          ),
                          child: Stack(children: [
                            Image.network(rest.image,
                                fit: BoxFit.fill, width: 250.0, height: 150.0),
                            index == 0
                                ? Positioned(
                                    left: 0,
                                    top: 12.0,
                                    child: DiscountOffer(message: message))
                                : Container(),
                            const Positioned(
                                top: 8.0, right: 8.0, child: Favourite())
                          ]))),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(rest.name, style: menuTitleStyle()),
                        Text(rest.address,
                            style: addressStyle().copyWith(fontSize: 13.0)),
                        Row(
                          children: [
                            Row(
                                children: List.generate(
                                    5,
                                    (index) => const Icon(Icons.star,
                                        color: mActiveColor, size: 17.0))),
                            Text('(${rest.review.toString()})')
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
