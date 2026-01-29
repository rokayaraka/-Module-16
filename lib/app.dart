import 'package:assignment_module16/Assignment_module16/Homepage.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(300, 800),
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
            textTheme: TextTheme(
              headlineLarge: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
              ),
              bodySmall: TextStyle(fontSize: 10.sp, color: Colors.black87),
            ),
            elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                alignment: Alignment.center,
                backgroundColor: Color(0xffd0d5dd),
                padding: EdgeInsets.all(0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(3.w),
                ),
                foregroundColor: Colors.black,
              ),
            ),
          ),
          debugShowCheckedModeBanner: false,
          home: HomePage(),
        );
      },
    );
  }
}
