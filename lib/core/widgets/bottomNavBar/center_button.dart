import 'package:eazy_app/core/utils/app_color.dart';
import 'package:eazy_app/core/utils/appIcons.dart';
import 'package:eazy_app/core/widgets/customSvg.dart';
import 'package:flutter/material.dart';

class CenterButton extends StatelessWidget {
  final bool selected;
  final VoidCallback onTap;

  const CenterButton({super.key, required this.selected, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CircleAvatar(
        radius: 27,
        backgroundColor: selected ? AppColors.blue : Colors.black,
        child: CustomSvg(path: AppIcons.homeIcon),
      ),
    );
  }
}
