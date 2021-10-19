import 'package:flutter/material.dart';

class DiscountOffer extends StatelessWidget {
  final String message;
  const DiscountOffer({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24.0,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(5.0), bottomRight: Radius.circular(5.0)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Text(
          message,
          style: const TextStyle(fontSize: 12.0, color: Colors.white),
        ),
      ),
    );
  }
}
