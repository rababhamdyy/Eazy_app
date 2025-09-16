import 'package:eazy/core/utils/appColor.dart';
import 'package:eazy/core/utils/appStyles.dart';
import 'package:eazy/core/widgets/customSvg.dart';
import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.white2,
          prefixIcon: IconButton(
            onPressed: () {},
            icon: const CustomSvg(
              path: 'assets/icons/search.svg',
              width: 24,
              height: 24,
              color: AppColors.gray,
            ),
          ),
          hintText: 'ابحث عن درس ',
          hintStyle: AppStyles.textStyle14w400FF
              .copyWith(color: AppColors.gray),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
