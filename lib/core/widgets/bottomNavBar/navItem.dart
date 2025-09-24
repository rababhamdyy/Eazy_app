import 'package:eazy_app/core/utils/appStyles.dart';
import 'package:eazy_app/core/utils/appColor.dart'; 
import 'package:flutter/material.dart';

class NavItem extends StatelessWidget {
  final Widget icon;
  final String label;
  final bool selected;
  final VoidCallback onTap;

  const NavItem({
    super.key,
    required this.icon,
    required this.label,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ColorFiltered(
            colorFilter: selected
                ? const ColorFilter.mode(AppColors.blue, BlendMode.srcIn)
                : const ColorFilter.mode(Colors.black, BlendMode.srcIn),
            child: icon,
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: AppStyles.textStyle12w400FF.copyWith(
              color: selected ? AppColors.blue : Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
