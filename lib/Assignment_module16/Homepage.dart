import 'package:assignment_module16/Assignment_module16/Cards.dart';
import 'package:assignment_module16/Assignment_module16/dummy%20data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10.w),
          child: GridView.builder(
            itemCount: courses.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            childAspectRatio: 0.60,
            crossAxisSpacing: 8.w,
            mainAxisSpacing: 8.w,
          
            ), 
            itemBuilder: (context,index){
              return Cards(course: courses[index],);
            }
            ),
        ),
        ),

    );
  }
}