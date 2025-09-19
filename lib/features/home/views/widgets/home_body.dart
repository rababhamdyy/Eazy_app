import 'package:eazy/core/utils/appColor.dart';
import 'package:eazy/core/utils/appPaddings.dart';
import 'package:eazy/features/home/views/widgets/bold_text_widget.dart';
import 'package:eazy/features/home/views/widgets/eazy_word.dart';
import 'package:eazy/features/home/views/widgets/home_grid_container.dart';
import 'package:eazy/features/home/views/widgets/home_grid_widget.dart';
import 'package:eazy/features/home/views/widgets/notification_widget.dart';
import 'package:eazy/features/home/views/widgets/regular_text_widget.dart';
import 'package:eazy/features/home/views/widgets/search_widget.dart';
import 'package:eazy/features/home/views/widgets/slider/slider_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: AppPaddings.homeBodyPadding,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Row(
                    children: [
                      NotificationWidget(),
                      Spacer(),
                      EazyWord(),
                    ],
                  ),
                  SizedBox(height: 27.h),
                  const SearchWidget(),
                  SizedBox(height: 14.h),
                  const HomeBoldText(text: 'أحدث العروض'),
                  SizedBox(height: 12.h),
                  const SliderSection(),
                  SizedBox(height: 17.h),
                  const Row(
                    children: [
                      HomeRegularText(text: 'المزيد'),
                      Spacer(),
                      HomeBoldText(text: 'الأقسام'),
                    ],
                  ),
                  SizedBox(height: 12.h),
                  const HomeGridWidget(),
                  SizedBox(height: 19.h),
                  const HomeBoldText(text: 'أستكمل دروسك'),
                  SizedBox(height: 12.h),
                ],
              ),
            ),
          ),
        ));
  }
}