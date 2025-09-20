import 'package:eazy/core/utils/appColor.dart';
import 'package:eazy/core/utils/appIcons.dart';
import 'package:eazy/core/utils/appStyles.dart';
import 'package:eazy/core/widgets/customSvg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationItem extends StatelessWidget {
  const NotificationItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 359.w,
      height: 112.h,
      padding: EdgeInsets.all(12.w),
      decoration: BoxDecoration(
          color: AppColors.white2,
          borderRadius: BorderRadius.circular(15.98.r)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'اسم الاشعار',
                  textDirection: TextDirection.rtl,
                  style: AppStyles.textStyle12w400FF
                      .copyWith(color: AppColors.notificationName),
                ),
                SizedBox(height: 6.h),
                Text(
                  'تفاصيل الاشعار هنا، تفاصيل الاشعار هنا، تفاصيل الاشعار هنا، تفاصيل الاشعار هنا.',
                  textDirection: TextDirection.rtl,
                  softWrap: true,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: AppStyles.textStyle12w400FF
                      .copyWith(color: AppColors.gray),
                )
              ],
            ),
          ),
          SizedBox(width: 12.w),
          Container(
            width: 64.85.w,
            height: 64.85.h,
            decoration: BoxDecoration(
                color: AppColors.gray,
                borderRadius: BorderRadius.circular(22.55.r)),
            child: IconButton(
              onPressed: () {},
              icon: CustomSvg(
                path: AppIcons.billIcon,
                width: 28.29.w,
                height: 28.29.h,
                color: AppColors.white2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
