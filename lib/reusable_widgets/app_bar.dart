import 'package:flutter/material.dart';
import 'package:sixam_tech_assignment/app_colors/app_colors.dart';
import 'package:sixam_tech_assignment/styling/styling.dart';

import 'notification.dart';

const String address = '76A Eighth Avenue,New York,US';

PreferredSizeWidget appBar() => AppBar(
      backgroundColor: mBackground,
      elevation: 0.0,
      title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(children: [
          const Icon(Icons.home, color: Color(0xFF9F9F9F)),
          const SizedBox(width: 5.0),
          Text(address, style: addressStyle())
        ]),
        const NotificationView(),
      ]),
    );
