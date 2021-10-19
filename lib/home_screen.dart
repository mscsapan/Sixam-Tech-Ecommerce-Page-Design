import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sixam_tech_assignment/reusable_widgets/all_rest_heading.dart';
import 'package:sixam_tech_assignment/reusable_widgets/all_restaurant_list.dart';
import 'package:sixam_tech_assignment/reusable_widgets/app_bar.dart';
import 'package:sixam_tech_assignment/reusable_widgets/bottom_app_bar.dart';
import 'package:sixam_tech_assignment/reusable_widgets/campaign_foods.dart';
import 'package:sixam_tech_assignment/reusable_widgets/category_item.dart';
import 'package:sixam_tech_assignment/reusable_widgets/food_menu.dart';
import 'package:sixam_tech_assignment/reusable_widgets/heading_view.dart';
import 'package:sixam_tech_assignment/reusable_widgets/new_on_app_name.dart';
import 'package:sixam_tech_assignment/reusable_widgets/popular_food.dart';
import 'package:sixam_tech_assignment/reusable_widgets/popular_restaurant_list.dart';
import 'package:sixam_tech_assignment/reusable_widgets/search_text_field.dart';

import 'app_colors/app_colors.dart';
import 'model/food_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  final String image2 =
      'https://www.freepnglogos.com/uploads/burger-png/burger-png-png-images-yellow-images-12.png';
  final String image =
      'https://images.unsplash.com/photo-1571091655789-405eb7a3a3a8?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1172&q=80';

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      //backgroundColor: mBG,
      appBar: appBar(),
      body: SizedBox(
        height: height,
        width: width,
        child: ListView(
          shrinkWrap: true,
          physics: const ClampingScrollPhysics(),
          children: [
            const SizedBox(height: 20.0),
            //search input field
            const SearchTextField(),
            const SizedBox(height: 10.0),
            FoodMenu(onChange: (index) => setState(() => currentIndex = index)),
            const SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                menu.length,
                (index) => Container(
                  height: currentIndex == index ? 10 : 6,
                  width: currentIndex == index ? 10 : 6,
                  margin: const EdgeInsets.only(right: 5.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: currentIndex == index
                        ? mActiveColor
                        : mActiveColor.withOpacity(0.5),
                  ),
                ),
              ),
            ),
            const HeadingView(leftTitle: 'Category'),
            const CategoryItem(),
            const SizedBox(height: 10.0),
            const HeadingView(leftTitle: 'Popular Food Nearby'),
            const PopularFoodItem(),
            const SizedBox(height: 10.0),
            const HeadingView(leftTitle: 'Food Campaign'),
            const SizedBox(height: 10.0),
            const CampaignFood(),
            const SizedBox(height: 10.0),
            const HeadingView(leftTitle: 'Popular Restaurant'),
            const PopularRestaurantList(),
            const SizedBox(height: 10.0),
            const HeadingView(leftTitle: 'New on App Name'),
            //const PopularRestaurantList(message: 'Free Delivery'),
            const NewOnAppName(),
            const AllRestHeading(),
            const AllRestaurantList(),
          ],
        ),
      ),
      bottomNavigationBar: const BottomAppBarView(),
    );
  }
}
