import 'package:eazy/features/home/manager/tab_cubit.dart';
import 'package:eazy/features/home/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => TabCubit()),
      ],
      child: const MaterialApp(
        home: HomeView(),
      ),
    );
  }
}