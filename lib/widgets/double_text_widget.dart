import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../utils/app_styles.dart';

class AppDoubleTextWidget extends StatelessWidget {
  final String bigText;
  final String smallText;
  const AppDoubleTextWidget(
      {super.key, required this.bigText, required this.smallText});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Upcoming Flights',
          style: Styles.headLineStyle2,
        ),
        InkWell(
          onTap: (() {
            print('You are tapped');
          }),
          child: Text(
            'View all',
            style: Styles.textStyle.copyWith(
              color: Styles.primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
