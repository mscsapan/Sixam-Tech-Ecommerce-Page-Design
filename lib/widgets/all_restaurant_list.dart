import 'package:flutter/material.dart';
import 'package:sixam_tech_assignment/model/all_restaurant_model.dart';

import 'all_restaurant_info.dart';

class AllRestaurantList extends StatelessWidget {
  const AllRestaurantList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        allRestaurants.length,
        (index) {
          AllRestaurantModel model = allRestaurants[index];
          return AllRestaurantInfo(
            logo: model.logo,
            name: model.name,
            moto: model.moto,
            type: model.type,
            index: index,
          );
        },
      ),
    );
  }
}
