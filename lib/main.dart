import 'package:deal_fineder_app/src/features/on_board/on_board.dart';
import 'package:deal_fineder_app/src/utils/color.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: AppColors.button,
        scaffoldBackgroundColor: AppColors.white,
        highlightColor: AppColors.button,
      ),
      home: OnBoardPage(),
    );
  }
}
