import 'package:eazy/core/utils/appColor.dart';
import 'package:eazy/core/utils/appIcons.dart';
import 'package:eazy/core/utils/appStyles.dart';
import 'package:eazy/core/widgets/customSvg.dart';
import 'package:flutter/material.dart';

class NotificationEmpty extends StatelessWidget {
  const NotificationEmpty({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const CustomSvg(
            path: AppIcons.No_notifications,
            width: 88,
            height: 88,
          ),
          const SizedBox(height: 24),
          Text('ليس لديك اشعارات جديدة حتي الآن',
              style: AppStyles.textStyle18w400
                  .copyWith(color: AppColors.iconlocal))
        ],
      ),
    );
  }
}
