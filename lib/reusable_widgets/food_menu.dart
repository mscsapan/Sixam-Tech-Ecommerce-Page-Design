import 'package:flutter/material.dart';
import 'package:sixam_tech_assignment/model/food_model.dart';

class FoodMenu extends StatelessWidget {
  final Function(int index) onChange;
  const FoodMenu({Key? key, required this.onChange}) : super(key: key);
  final double imgConHeight = 100.0;
  final double imgConWidth = 250.0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: imgConHeight,
      width: imgConWidth,
      alignment: Alignment.center,
      child: PageView.builder(
        onPageChanged: onChange,
        physics: const ClampingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: menu.length,
        itemBuilder: (context, index) {
          return Container(
            // margin: const EdgeInsets.only(right: 10.0),
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset(menu[index].menuImage,
                  fit: BoxFit.cover, height: imgConHeight, width: imgConWidth),
            ),
          );
        },
      ),
    );
  }
}
