import 'package:eazy/core/utils/appColor.dart';
import 'package:eazy/core/utils/appPaddings.dart';
import 'package:eazy/core/widgets/customAppBar.dart';
import 'package:eazy/features/home/views/widgets/notification/notification_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        padding: AppPaddings.mainPadding,
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: CustomAppBar(title: 'الإشعارات'),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 24.h,
              ),
            ),
            // SliverFillRemaining(
            //   hasScrollBody: false,
            //   child: NotificationEmpty(),
            // ),
            NotificationList()
          ],
        ),
      ),
    );
  }
}
