import 'package:deal_fineder_app/src/features/on_board/views/category.dart';
import 'package:deal_fineder_app/src/features/on_board/views/notify.dart';
import 'package:deal_fineder_app/src/utils/color.dart';
import 'package:deal_fineder_app/src/widgets/poppins_text.dart';
import 'package:deal_fineder_app/src/widgets/stack_body.dart';
import 'package:flutter/material.dart';

import '../../widgets/button.dart';
import '../../widgets/on_board_data.dart';

class OnBoardPage extends StatefulWidget {
  const OnBoardPage({super.key});

  @override
  State<OnBoardPage> createState() => _OnBoardPageState();
}

class _OnBoardPageState extends State<OnBoardPage> {
  int _page = 0;
  late PageController controller;

  @override
  void initState() {
    controller = PageController(
      initialPage: _page,
    );
  }

  @override
  Widget build(BuildContext context) {
    return AppStackBody(
      isButtons: true,
      buttons: [
        Expanded(
          child: AppButton(
            title: 'Keep Customizing',
            fontSize: 20,
            height: 80,
            onPressed: () {
              _page++;
              controller.animateToPage(_page,
                  duration: Duration(milliseconds: 500), curve: Curves.ease);
              setState(() {});
            },
            backgroundColor: null,
            boxDecoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color(0xff000000).withOpacity(0.45),
                  offset: Offset(0, 17),
                  spreadRadius: 0,
                  blurRadius: 44,
                )
              ],
              color: AppColors.button.withOpacity(0.9),
            ),
          ),
        ),
        SizedBox(width: 10),
        Expanded(
          child: AppButton(
            title: _page < 2 ? 'Keep Customizing' : "Signup",
            fontSize: 20,
            height: 80,
            onPressed: () {
              _page++;
              controller.animateToPage(_page,
                  duration: Duration(milliseconds: 500), curve: Curves.ease);
              setState(() {});
            },
            backgroundColor: null,
            boxDecoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color(0xff000000).withOpacity(0.45),
                  offset: Offset(0, 17),
                  spreadRadius: 0,
                  blurRadius: 44,
                )
              ],
              color: AppColors.button.withOpacity(0.9),
            ),
          ),
        ),
      ],
      children: PageView.builder(
        onPageChanged: (page) {
          _page = page;
          setState(() {});

          print(_page);
        },
        controller: controller,
        itemBuilder: (c, i) {
          return pages[i];
        },
        itemCount: pages.length,
      ),
    );
  }
}

Widget whiteContainer({
  required EdgeInsets margin,
  required double opacity,
}) {
  return Container(
    margin: margin,
    decoration: BoxDecoration(
      color: AppColors.white.withOpacity(opacity),
      borderRadius: BorderRadius.circular(32),
    ),
  );
}

List<Widget> pages = [
  OnboardNotification(),
  OnboardCategory(),
  StackedDataWidget(
      logo: 'assets/images/hand.png',
      quote: 'Be the first to',
      title: 'Grab a deal',
      children: [
        InterText(
          "Create an account to customize notifications and only see the deals you're interested in, avoiding unnecessary alerts.",
          size: 18,
          fontWeight: FontWeight.w500,
        )
      ])
];
