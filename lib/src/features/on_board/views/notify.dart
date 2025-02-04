import 'package:flutter/material.dart';

import '../../../widgets/on_board_data.dart';
import '../../../widgets/poppins_text.dart';

class OnboardNotification extends StatelessWidget {
  const OnboardNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return StackedDataWidget(
        logo: 'assets/images/hand.png',
        quote: 'When deals arrive',
        title: 'Why Enable Notification?',
        children: [
          _point("Be the first to know about hot deals and discounts."),
          _point("Get personalized updates based on your interests."),
          _point("Never miss out on important alerts and reminders.")
        ]);
  }

  Widget _point(String p) {
    return Padding(
        padding: EdgeInsets.only(bottom: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: CircleAvatar(
                radius: 4,
                backgroundColor: Colors.black,
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: InterText(
                p,
                fontWeight: FontWeight.w500,
                size: 18,
              ),
            )
          ],
        ));
  }
}
