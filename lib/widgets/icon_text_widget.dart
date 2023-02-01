import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class AppIconText extends StatelessWidget {
  final IconData icon;
  final String iconText;
  const AppIconText({required this.icon, required this.iconText});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppLayout.getWidth(10)),
        color: Colors.white,
      ),
      padding: EdgeInsets.symmetric(
          vertical: AppLayout.getWidth(12),
          horizontal: AppLayout.getHeight(12)),
      child: Row(
        children: [
          Icon(
            icon,
            color: const Color(0xFFBFC2DF),
          ),
          Gap(AppLayout.getWidth(10)),
          Text(
            iconText,
            style: Styles.textStyle,
          ),
        ],
      ),
    );
  }
}
