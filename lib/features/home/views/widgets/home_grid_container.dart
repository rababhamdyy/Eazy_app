import 'package:eazy/core/utils/appColor.dart';
import 'package:eazy/core/widgets/customSvg.dart';
import 'package:eazy/features/home/views/widgets/section_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeGridContainer extends StatelessWidget {
  final String iconPath;
  final String text;
  final VoidCallback? onTap;

  const HomeGridContainer({
    super.key,
    required this.iconPath,
    required this.text,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110.18.w,
      height: 119.27.h,
      decoration: BoxDecoration(
        color: AppColors.containerHome,
        borderRadius: BorderRadius.circular(12.5.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 46.57.w,
            height: 46.57.h,
            decoration: BoxDecoration(
              color: AppColors.iconCamare,
              borderRadius: BorderRadius.circular(50.r),
            ),
            child: IconButton(
              onPressed: onTap,
              icon: CustomSvg(path: iconPath),
            ),
          ),
          HomeSectionText(text: text),
        ],
      ),
    );
  }
}
