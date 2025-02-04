import 'package:flutter/material.dart';

import '../../../utils/color.dart';
import '../../../widgets/chips.dart';
import '../../../widgets/on_board_data.dart';
import '../../../widgets/wrap.dart';
import '../../home.dart';

class OnboardCategory extends StatefulWidget {
  const OnboardCategory({super.key});

  @override
  State<OnboardCategory> createState() => _OnboardCategoryState();
}

class _OnboardCategoryState extends State<OnboardCategory> {
  @override
  Widget build(BuildContext context) {
    return StackedDataWidget(
        logo: 'assets/images/hand.png',
        quote: 'Select notification Categories',
        title: 'Choose Your Categories',
        children: [
          WrapWidget(
            children: [
              for (int i = 0; i < categories.length; i++)
                ChipWidget(
                  height: 32,
                  borderColor: customized.contains(categories[i])
                      ? Colors.transparent
                      : AppColors.color38.withOpacity(0.1),
                  title: categories[i],
                  backgroundColor: AppColors.color38,
                  onTap: () {
                    int index =
                        customized.indexWhere((e) => e == categories[i]);
                    if (index == -1) {
                      customized.add(categories[i]);
                    } else {
                      customized.removeAt(index);
                    }
                    setState(() {});
                  },
                  isTrue: customized.contains(categories[i]),
                )
            ],
          )
        ]);
  }
}
