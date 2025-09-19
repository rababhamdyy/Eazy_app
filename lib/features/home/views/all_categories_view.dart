import 'package:eazy/core/utils/appColor.dart';
import 'package:eazy/core/utils/appPaddings.dart';
import 'package:eazy/core/widgets/customAppBar.dart';
import 'package:eazy/features/home/views/widgets/home/all_categories_grid.dart';
import 'package:flutter/material.dart';

class AllCategoriesView extends StatelessWidget {
  const AllCategoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        padding: AppPaddings.mainPadding,
        child: const Column(
          children: [
            CustomAppBar(
              title: 'الأقسام',
            ),
            SizedBox(height: 55),
            AllCategoriesGrid()
          ],
        ),
      ),
    );
  }
}
