import 'package:flutter/material.dart';

import 'gradient_text.dart';
import 'poppins_text.dart';

class StackedDataWidget extends StatelessWidget {
  final String logo;
  final String quote;
  final String title;
  final List<Widget> children;

  const StackedDataWidget(
      {super.key,
      required this.logo,
      required this.quote,
      required this.title,
      required this.children});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(20, 20, 20, 400),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(logo),
              SizedBox(width: 12),
              Expanded(
                child: PoppinsText(
                  quote,
                  size: 18,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 24, bottom: 16),
            child: GradientText(title),
          ),
          ...children
        ],
      ),
    );
  }
}
