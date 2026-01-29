import 'package:assignment_module16/module16_Assignmnet/responsiveHome.dart';

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
          debugShowCheckedModeBanner: false,
          home: ResponsiveHome(),
        );
      },
    );
  }
}
