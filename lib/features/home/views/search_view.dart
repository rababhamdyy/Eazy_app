import 'package:eazy/core/utils/appColor.dart';
import 'package:eazy/core/utils/appPaddings.dart';
import 'package:eazy/core/widgets/customAppBar.dart';
import 'package:eazy/features/Lessons/data/models/demo_data.dart';
import 'package:eazy/features/Lessons/manager/lesson_cubit/cubit.dart';
import 'package:eazy/features/home/manager/search_cubit.dart';
import 'package:eazy/features/home/views/widgets/home/search_widget.dart';
import 'package:eazy/features/home/views/widgets/lessons/home_lesson_item.dart';
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
            const CustomAppBar(title: 'ابحث عن درس'),
            const SizedBox(height: 33),
            BlocProvider(
              create: (_) => SearchCubit(),
              child: const SearchWidget(
                autoFocus: true,
              ),
            ),
            const SizedBox(height: 12),
            BlocProvider(
              create: (context) => LessonsCubit(),
              child: Column(
                children: [
                  HomeLessonItem(
                    data: datalessons(
                      isSave: false,
                      isblock: false,
                      title: 'زمن الماضي البسيط',
                      description: 'قسم القواعد',
                      subScription: true,
                    ),
                  ),
                  const SizedBox(height: 13),
                  HomeLessonItem(
                    data: datalessons(
                      isSave: false,
                      isblock: false,
                      title: 'تكوين الجملة في زمن الماضي البسيط',
                      description: 'قسم القواعد',
                      subScription: false,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
