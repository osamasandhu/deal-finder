import 'package:deal_fineder_app/src/utils/color.dart';
import 'package:deal_fineder_app/src/widgets/button.dart';
import 'package:deal_fineder_app/src/widgets/poppins_text.dart';
import 'package:flutter/material.dart';

import '../widgets/chips.dart';
import '../widgets/gradient_text.dart';
import '../widgets/wrap.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GradientText('Choose Your Categories'),
            SizedBox(height: 10),
            PoppinsText('40 Height Button'),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                    child: AppOutlineButton(
                  title: 'See Instructions',
                  onPressed: () {},
                  fontSize: 12,
                  height: 40,
                )),
                SizedBox(width: 12),
                Expanded(
                  child: AppButton(
                    title: 'Grab the Deal',
                    onPressed: () {},
                    fontSize: 12,
                    height: 40,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            PoppinsText('52 Height Button'),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                    child: AppOutlineButton(
                  title: 'Cancel',
                  onPressed: () {},
                )),
                SizedBox(width: 12),
                Expanded(
                  child: AppButton(
                    title: 'Submit',
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            PoppinsText('56 Height Button'),
            SizedBox(height: 10),
            AppButton(
              title: 'Signup',
              fontSize: 16,
              radius: 16,
              height: 56,
              onPressed: () {},
            ),
            SizedBox(height: 10),
            SizedBox(
              width: 200,
              child: AppButton(
                title: 'Keep Customizing',
                fontSize: 20,
                height: 80,
                onPressed: () {},
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
                  color: AppColors.button.withOpacity(0.8),
                ),
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }

  Widget _buildCategories() {
    return WrapWidget(
      children: [
        for (int i = 0; i < categories.length; i++)
          ChipWidget(
            fontSize: 12,
            title: categories[i],
            isTrue: selectedCategory.contains(categories[i]),
            backgroundColor: AppColors.color38,
            onTap: () {
              int index =
                  selectedCategory.indexWhere((e) => e == categories[i]);
              if (index == -1) {
                selectedCategory.add(categories[i]);
              } else {
                selectedCategory.removeAt(index);
              }
              setState(() {});
            },
          )
      ],
    );
  }

  Widget _buildCategoriesDetail() {
    return WrapWidget(
      children: [
        for (int i = 0; i < categoriesDetail.length; i++)
          ChipWidget(
            height: 32,
            borderColor: customized.contains(categoriesDetail[i])
                ? Colors.transparent
                : AppColors.color38.withOpacity(0.1),
            title: categoriesDetail[i],
            backgroundColor: AppColors.button,
            onTap: () {
              int index =
                  customized.indexWhere((e) => e == categoriesDetail[i]);
              if (index == -1) {
                customized.add(categoriesDetail[i]);
              } else {
                customized.removeAt(index);
              }
              setState(() {});
            },
            isTrue: customized.contains(categoriesDetail[i]),
          )
      ],
    );
  }
}

List<String> categories = [
  'Home & Kitchen',
  'Toys & Games',
  'Baby',
  'Tools',
  'Tec & Accessories',
  'Lawn, Sports & Out.',
  'Beauty & Care',
  'Kid’s Clothing',
  'Women’s Clothing',
  'Men’s Clothing',
];
List<String> selectedCategory = [];
List<String> categoriesDetail = [
  'Cutlery Sets',
  'Utensils & Gadgets',
  'Wardrobes',
  'Curtains',
  'Clocks',
  'Tables',
  'Other',
];
List<String> customized = [];
