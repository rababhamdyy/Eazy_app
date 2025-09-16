import 'package:eazy/core/utils/appColor.dart';
import 'package:eazy/core/utils/appPaddings.dart';
import 'package:eazy/features/home/views/widgets/bold_text_widget.dart';
import 'package:eazy/features/home/views/widgets/eazy_word.dart';
import 'package:eazy/features/home/views/widgets/notification_widget.dart';
import 'package:eazy/features/home/views/widgets/search_widget.dart';
import 'package:eazy/features/home/views/widgets/slider/slider_section.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.white,
        body: SafeArea(
          child: Padding(
            padding: AppPaddings.homeBodyPadding,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  children: [
                    NotificationWidget(),
                    Spacer(),
                    EazyWord(),
                  ],
                ),
                SearchWidget(),
                HomeBoldText(text: 'أحدث العروض'),
                SliderSection()
              ],
            ),
          ),
        ));
  }
}