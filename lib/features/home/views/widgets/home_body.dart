import 'package:eazy/core/utils/appColor.dart';
import 'package:eazy/core/utils/appPaddings.dart';
import 'package:eazy/features/home/views/widgets/bold_text_widget.dart';
import 'package:eazy/features/home/views/widgets/eazy_word.dart';
import 'package:eazy/features/home/views/widgets/notification_widget.dart';
import 'package:eazy/features/home/views/widgets/search_widget.dart';
import 'package:eazy/features/home/views/widgets/slider_image.dart';
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
                SliderImage(),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 36,
                    height: 11,
                    decoration: BoxDecoration(
                        color: AppColors.gray5,
                        borderRadius: BorderRadius.circular(13.48)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 6.29,
                          height: 6.29,
                          decoration: BoxDecoration(
                              color: AppColors.orangeHome,
                              borderRadius: BorderRadius.circular(13.48)),
                        ),
                        Container(
                          width: 6.29,
                          height: 6.29,
                          decoration: BoxDecoration(
                              color: AppColors.grayHome,
                              borderRadius: BorderRadius.circular(13.48)),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
