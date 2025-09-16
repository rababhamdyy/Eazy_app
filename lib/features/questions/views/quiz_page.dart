import 'package:eazy/core/helper/my_navgator.dart';
import 'package:eazy/core/utils/appColor.dart';
import 'package:eazy/core/utils/appIcons.dart';
import 'package:eazy/core/utils/appPaddings.dart';
import 'package:eazy/core/utils/appStyles.dart';
import 'package:eazy/core/widgets/customAppBar.dart';
import 'package:eazy/core/widgets/customButtom.dart';
import 'package:eazy/core/widgets/customSvg.dart';
import 'package:eazy/features/LessonsDetails/Views/Lessons_details_view.dart';
import 'package:eazy/features/questions/data/question_model.dart';
import 'package:eazy/features/questions/views/widgets/question_navigator_bar.dart';
import 'package:eazy/features/result/views/result_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  int? _selectedAnswer;

  void _nextQuestion() {
    if (_currentPage < questions.length - 1) {
      setState(() {
        _selectedAnswer = null;
        _currentPage++;
      });
      _pageController.nextPage(
          duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
    }
  }

  void _prevQuestion() {
    if (_currentPage > 0) {
      setState(() {
        _selectedAnswer = null;
        _currentPage--;
      });
      _pageController.previousPage(
          duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: AppPaddings.mainPadding,
        child: Column(
          children: [
            _currentPage == 0
                ? CustomAppBar(
                    title: 'اختبار سريع',
                    onPressed: () {
                      Navigator.of(context).pop();
                      MyNavigator.goTo(
                          context,
                          LessonsDetailsView(
                            showSheetOnOpen: true,
                          ),
                          type: NavigatorType.pushReplacement);
                    },
                  )
                : Padding(
                    padding: EdgeInsets.only(top: 68.h),
                    child: Center(
                        child: Text(
                      'اختبار سريع',
                      style: AppStyles.textStyle18w400,
                    )),
                  ),
            const SizedBox(height: 20),
            QuestionNavigatorBar(
              currentPage: _currentPage,
              totalQuestions: questions.length,
              onNext: _nextQuestion,
              onPrevious: _prevQuestion,
            ),
            const SizedBox(height: 20),
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: questions.length,
                itemBuilder: (context, index) {
                  final question = questions[index];
                  return Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Directionality(
                          textDirection: TextDirection.rtl,
                          child: Row(
                            children: [
                              CustomSvg(
                                path: AppIcons.multiplechoice,
                                height: 20.h,
                                width: 20.w,
                                color: AppColors.blue,
                              ),
                              SizedBox(width: 10.w),
                              Text(
                                'اختيار متعدد',
                                style: AppStyles.textStyle14w400C.copyWith(
                                  color: AppColors.blue,
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 24),
                        Text(
                          question.question,
                          style: AppStyles.textStyle20w400FF,
                          textAlign: TextAlign.right,
                          textDirection: TextDirection.rtl,
                        ),
                        const SizedBox(height: 24),
                        ...List.generate(question.answers.length,
                            (answerIndex) {
                          final answer = question.answers[answerIndex];
                          final isSelected = _selectedAnswer == answerIndex;
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                _selectedAnswer = answerIndex;
                              });
                            },
                            child: Container(
                              width: double.infinity,
                              alignment: Alignment.centerRight,
                              margin: EdgeInsets.only(bottom: 18.w),
                              padding: EdgeInsets.symmetric(
                                  vertical: 12.h, horizontal: 10.w),
                              decoration: BoxDecoration(
                                color: isSelected
                                    ? AppColors.blue
                                    : Colors.transparent,
                                borderRadius: BorderRadius.circular(11.r),
                              ),
                              child: Text(
                                answer,
                                textDirection: TextDirection.rtl,
                                style: AppStyles.textStyle14w400FF.copyWith(
                                  color:
                                      isSelected ? Colors.white : Colors.black,
                                ),
                                textAlign: TextAlign.right,
                              ),
                            ),
                          );
                        }),
                      ],
                    ),
                  );
                },
              ),
            ),
            CustomBtn(
                text: 'التالي',
                onPressed: () {
                  _nextQuestion();
                  if (_currentPage == questions.length - 1) {
                    MyNavigator.goTo(context, ResultView(),
                        type: NavigatorType.pushReplacement);
                  }
                },
                width: double.infinity,
                height: 51.h),
            SizedBox(height: 44.h),
          ],
        ),
      ),
    );
  }
}
