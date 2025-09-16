
import 'package:eazy/core/helper/my_navgator.dart';
import 'package:eazy/core/utils/appColor.dart';
import 'package:eazy/core/utils/appIcons.dart';
import 'package:eazy/core/utils/appImages.dart';
import 'package:eazy/core/utils/appStyles.dart';
import 'package:eazy/core/widgets/customSvg.dart';
import 'package:eazy/features/Lessons/data/models/demo_data.dart';
import 'package:eazy/features/Lessons/manager/lesson_cubit/cubit.dart';
import 'package:eazy/features/Lessons/manager/lesson_cubit/states.dart';
import 'package:eazy/features/Upgrade/views/upgrade_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LessonsItem extends StatelessWidget {
  const LessonsItem({super.key, required this.data});
  final datalessons data;

  Widget buildLessonAction(datalessons data,BuildContext context) {
    if (data.isblock) {
      // لو مقفول
      return CustomSvg(
            path: AppIcons.lock_open,
            width: 26.w,
            height: 26.h,
            color: AppColors.iconlocal,
      );
    } else if (data.subScription) {
      return GestureDetector(
        onTap: () {},
        child: Container(
          alignment: Alignment.center,
          width: 87.w,
          height: 26.55.h,
          decoration: BoxDecoration(
            color: AppColors.iconSave,
            borderRadius: BorderRadius.circular(5.23.r),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomSvg(
                path: AppIcons.lock_open,
                color: AppColors.white,
              ),
              SizedBox(width: 4.w),
              Text(
                'اشترك',
                style: AppStyles.textStyle12w400FF.copyWith(
                  color: AppColors.white,
                ),
              ),
            ],
          ),
        ),
      );
    } else {
      // لو مفيش شرط
      return const SizedBox.shrink();
    }
  }

  void showLockedDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Container(
            alignment: Alignment.bottomCenter,
            width: double.infinity,
            height: 280.h,
            padding: EdgeInsets.all(16.w),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: IconButton(onPressed: (){
                    MyNavigator.goBack(context);
                  },
                      icon: CustomSvg(path: AppIcons.close,width: 17.w,height: 17.h,)),
                ),
                Image.asset(
                  Appimages.errorImage,
                  width: 87.w,
                  height: 87.h,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 16.h),
                Text(
                  'من فضلك استكمل الدرس السابق\nلتتمكن من فتح هذا الدرس',
                  textAlign: TextAlign.center,
                  style:AppStyles.textStyle18w400,
                ),
                SizedBox(height: 24.h),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        if(data.isblock){
          showLockedDialog(context);
        }else if(data.subScription){
          MyNavigator.goTo(context, UpgradeView(),
              type: NavigatorType.push);
        }else{
        }
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        width: 355.w,
        height: 103.h,
        decoration: BoxDecoration(
          color: AppColors.white2,
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Column(
          children: [
            BlocBuilder<LessonsCubit, LessonsStates>(
              builder: (context, state) {
                final cubit = LessonsCubit.get(context);
                return Row(
                  children: [
                    IconButton(onPressed: () {
                      cubit.toggleSave();
                    },
                        icon: CustomSvg(
                          path: AppIcons.saveIcon,
                          color: data.isSave ? AppColors.iconSave : AppColors.gray,
                          width: 24.w,
                          height: 24.h,
                        )),
                    buildLessonAction(data,context),
                    Spacer(),
                    Text(
                       data.title, style: AppStyles.textStyle12w400FF.copyWith(
                      color: AppColors.gray,
                    ),),
                  ],
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(data.description, style: AppStyles.textStyle14w700FF,)
              ],
            )
          ],
        ),
      ),
    );
  }
}





