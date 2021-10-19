import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sixam_tech_assignment/app_colors/app_colors.dart';
import 'package:sixam_tech_assignment/model/polular_food_model.dart';
import 'package:sixam_tech_assignment/styling/styling.dart';

import 'discount_message.dart';

class PopularFoodItem extends StatelessWidget {
  const PopularFoodItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200.0,
      height: 125.0,
      child: ListView.builder(
        itemCount: popular.length,
        scrollDirection: Axis.horizontal,
        physics: const ClampingScrollPhysics(),
        itemBuilder: (context, index) {
          PopularFood food = popular[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Card(
              elevation: 4.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: double.infinity,
                    width: 170.0,
                    padding: const EdgeInsets.all(6.0),
                    child: ClipRRect(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(12.0)),
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Image.network(food.image, fit: BoxFit.fill),
                          index == 0
                              ? const Positioned(
                                  left: 0,
                                  top: 12.0,
                                  child: DiscountOffer(message: '30% Off'))
                              : Container()
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(food.title, style: menuTitleStyle()),
                        Text(food.subTitle, style: subTitleStyle()),
                        Row(
                          children: List.generate(
                              4,
                              (index) => const Icon(Icons.star,
                                  size: 18, color: mActiveColor)),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text('\$${food.price.toString()}',
                                    style: menuTitleStyle()),
                                const SizedBox(width: 10.0),
                                Text('\$${food.discountPrice.toString()}',
                                    style: discountStyle())
                              ],
                            ),
                            //const SizedBox(width: 10.0),
                            const Padding(
                              padding: EdgeInsets.only(left: 60.0, top: 10.0),
                              child: Icon(Icons.add, size: 32.0),
                            ),
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
