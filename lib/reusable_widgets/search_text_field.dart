import 'package:flutter/material.dart';
import 'package:sixam_tech_assignment/app_colors/app_colors.dart';
import 'package:sixam_tech_assignment/styling/styling.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Card(
        elevation: 7.0,
        child: TextField(
          decoration: InputDecoration(
            border: const OutlineInputBorder(borderSide: BorderSide.none),
            filled: true,
            fillColor: mBackground,
            hintText: 'Search food or restaurant here',
            hintStyle: hintStyle(),
            suffixIcon: const Icon(Icons.search, color: mIconColor),
          ),
        ),
      ),
    );
  }
}
