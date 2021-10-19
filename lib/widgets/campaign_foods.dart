import 'package:flutter/material.dart';
import 'package:sixam_tech_assignment/app_colors/app_colors.dart';
import 'package:sixam_tech_assignment/model/food_campaigning.dart';
import 'package:sixam_tech_assignment/model/polular_food_model.dart';
import 'package:sixam_tech_assignment/styling/styling.dart';

class CampaignFood extends StatelessWidget {
  const CampaignFood({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240.0,
      width: double.infinity,
      child: ListView.builder(
        itemCount: campaign.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          PopularFood food = popular[index];
          return Container(
            height: 240.0,
            width: 160.0,
            margin: const EdgeInsets.symmetric(horizontal: 10.0),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10.0)),
            child: Column(
              children: [
                SizedBox(
                  height: 125.0,
                  width: 160,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        topRight: Radius.circular(10.0)),
                    child: Image.network(campaign[index],
                        fit: BoxFit.fill, height: 140, width: 160),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(food.title, style: menuTitleStyle()),
                      Text(food.subTitle, style: subTitleStyle()),
                      Row(
                        children: List.generate(
                          5,
                          (index) => const Icon(Icons.star,
                              size: 17, color: mActiveColor),
                        ),
                      ),
                      Row(
                        children: [
                          Row(
                            children: [
                              Text('\$${food.price.toString()}',
                                  style: menuTitleStyle()),
                              const SizedBox(width: 10.0),
                              Text(
                                '\$${food.discountPrice.toString()}',
                                style: discountStyle(),
                              )
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
          );
        },
      ),
    );
  }
}
