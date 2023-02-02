import 'package:flight_booking_app/utils/app_layout.dart';
import 'package:flight_booking_app/utils/app_styles.dart';
import 'package:flight_booking_app/widgets/ticket_tabs.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getHeight(20),
              vertical: AppLayout.getHeight(20),
            ),
            children: [
              Gap(AppLayout.getHeight(40)),
              Text(
                'Tickets',
                style: Styles.headLineStyle1,
              ),
              Gap(AppLayout.getHeight(20)),
              AppTicketTabs(
                firstTab: 'Upcoming',
                secondTab: 'Previous',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
