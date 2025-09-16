import 'package:eazy/core/utils/appColor.dart';
import 'package:eazy/core/utils/appImages.dart';
import 'package:eazy/core/utils/appStyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SliderImage extends StatelessWidget {
  const SliderImage({super.key, this.buttom});
  final Widget? buttom;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 154.h,
      width: double.infinity,
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage(Appimages.homeImage))),
          ),
          Positioned(
              left: 24.w,
              top: 25.h,
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(children: [
                    TextSpan(
                        text: 'اشترك',
                        style: AppStyles.textStyle13_19w400
                            .copyWith(color: AppColors.white)),
                    const TextSpan(text: ' '),
                    TextSpan(
                        text: 'بخصم 20%\n',
                        style: AppStyles.textStyle16_49w400
                            .copyWith(color: AppColors.blue)),
                    TextSpan(
                        text: 'وتعلم جميع الدروس\nعلى',
                        style: AppStyles.textStyle13_19w400
                            .copyWith(color: AppColors.white)),
                    const TextSpan(text: ' '),
                    TextSpan(
                        text: 'إيزي',
                        style: AppStyles.textStyle28_58w400
                            .copyWith(color: AppColors.blue)),
                  ]),
                ),
              )),
          buttom ?? const SizedBox(),
        ],
      ),
    );
  }
}
