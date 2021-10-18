import 'package:flutter/material.dart';
import 'package:sixam_tech_assignment/reusable_widgets/app_bar.dart';
import 'package:sixam_tech_assignment/reusable_widgets/category_item.dart';
import 'package:sixam_tech_assignment/reusable_widgets/food_menu.dart';
import 'package:sixam_tech_assignment/reusable_widgets/heading_view.dart';
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
  final String image =
      'https://www.freepnglogos.com/uploads/burger-png/burger-png-png-images-yellow-images-12.png';

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
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
            //const SizedBox(height: 10.0),
            const CategoryItem(),
            const SizedBox(height: 10.0),
            const HeadingView(leftTitle: 'Popular Food Nearby'),
            SizedBox(
              width: 220.0,
              height: 120.0,
              child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  physics: const ClampingScrollPhysics(),
                  itemBuilder: (context, index) => Card(
                        elevation: 3.0,
                        child: Row(
                          children: [
                            ClipRRect(
                              child: Image.network(image),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('Burger'),
                                const Text('Mc Donald New York USA'),
                                Row(
                                  children: List.generate(
                                      4,
                                      (index) => const Icon(
                                            Icons.star,
                                            size: 20,
                                            color: Color(0xFFEF7822),
                                          )),
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Row(
                                      children: const [
                                        Text('\$5'),
                                        Text('\$10'),
                                      ],
                                    ),
                                    const Icon(Icons.add),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      )),
            ),
          ],
        ),
      ),
    );
  }
}
