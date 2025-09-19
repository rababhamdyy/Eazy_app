import 'package:eazy/core/utils/appColor.dart';
import 'package:eazy/core/utils/appPaddings.dart';
import 'package:eazy/core/widgets/customAppBar.dart';
import 'package:eazy/features/home/manager/search_cubit.dart';
import 'package:eazy/features/home/views/widgets/home/search_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.searchBackground,
      body: Padding(
        padding: AppPaddings.mainPadding,
        child: Column(
          children: [
            CustomAppBar(title: 'ابحث عن درس'),
            SizedBox(height: 33),
            BlocProvider(
              create: (_) => SearchCubit(),
              child: SearchWidget(
                autoFocus: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
