import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:viaja_norte_e_sul/cubit/app_cubit_logics.dart';
import 'package:viaja_norte_e_sul/cubit/app_cubits.dart';
import 'package:viaja_norte_e_sul/pages/detail_page.dart';
import 'package:viaja_norte_e_sul/pages/navpages/main_page.dart';
import 'package:viaja_norte_e_sul/pages/welcome_page.dart';
import 'package:viaja_norte_e_sul/services/data_services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: BlocProvider<AppCubits>(
          create: (context) => AppCubits(
            data: DataServices(),
          ),
          child: AppCubitLogics(),
        ));
  }
}
