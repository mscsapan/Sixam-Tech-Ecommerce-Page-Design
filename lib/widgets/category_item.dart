import 'package:flutter/material.dart';
import 'package:sixam_tech_assignment/model/category_model.dart';
import 'package:sixam_tech_assignment/styling/styling.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130.0,
      width: double.infinity,
      child: ListView.builder(
          itemCount: category.length,
          scrollDirection: Axis.horizontal,
          physics: const ClampingScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) {
            CategoryModel _model = category[index];
            return Column(
              children: [
                Padding(
                    padding: const EdgeInsets.only(
                        top: 10, bottom: 2.0, right: 5.0, left: 5.0),
                    child: Card(
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Container(
                        height: 85.0,
                        width: 80.0,
                        margin: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image.asset(_model.image),
                        ),
                      ),
                    )),
                Text(_model.name, style: menuTitleStyle()),
              ],
            );
          }),
    );
  }
}
