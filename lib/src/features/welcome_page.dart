import 'package:deal_fineder_app/src/features/on_board/on_board.dart';
import 'package:deal_fineder_app/src/utils/nav.dart';
import 'package:deal_fineder_app/src/widgets/poppins_text.dart';
import 'package:deal_fineder_app/src/widgets/stack_body.dart';
import 'package:flutter/material.dart';

import '../widgets/on_board_data.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return AppStackBody(
      isButtons: false,
      isBack: false,
      children: StackedDataWidget(
        logo: 'assets/images/hand.png',
        quote: 'Be the first to',
        title: 'I am Foxy!',
        children: [
          InterText(
            "Welcome to Save Crazy Deals, where smart shoppers like you get notified about unbeatable savings! I’ll Make sure you never miss an amazing deal!",
            size: 18,
            fontWeight: FontWeight.w500,
          ),
          SizedBox(
            height: 15,
          ),
          IconButton(
            onPressed: () => AppNavigation.push(context, OnBoardPage()),
            icon: Icon(
              Icons.arrow_forward,
              color: Colors.white,
            ),
            style: IconButton.styleFrom(
                backgroundColor: Color(0xff383838), minimumSize: Size(60, 60)),
          )
        ],
      ),
    );
  }
}
