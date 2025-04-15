import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_task_again/screens/BookAppointment.dart';
import 'package:new_task_again/screens/list.dart';
// import any theme/colors you want here

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690), // match your base UI design
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Book Appointment',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home:  ListUI(),
        );
      },
    );
  }
}
