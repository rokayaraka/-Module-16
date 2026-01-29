import 'package:assignment_module16/Assignment_module16/dummy%20data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BatchCourseDetails extends StatelessWidget {
  final Course course;
  const BatchCourseDetails({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5.w),
      decoration: BoxDecoration(
        color: Color(0xfff9f9fa),
        border: Border.symmetric(
          horizontal: BorderSide(color: Colors.black87, width: 0.1),
        ),
      ),
      height: 60.h,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

        children: [
          iconText(title: course.batch, context: context),
          iconText(title: course.seat, icon: Icons.chair, context: context),
          iconText(title: course.days, icon: Icons.timer, context: context),
        ],
      ),
    );
  }

  Container iconText({
    required String title,
    IconData? icon,
    required BuildContext context,
  }) {
    return Container(
      padding: EdgeInsets.all(3.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2.w),
        color: Color(0xffeaecf0),
      ),
      child: Row(
        children: [
          icon != null ? Icon(icon, size: 8.w) : SizedBox.shrink(),
          icon!=null?SizedBox(width: 3.w,):SizedBox.shrink(),
          Text(title, style: Theme.of(context).textTheme.bodySmall!.copyWith(
            fontSize: MediaQuery.of(context).size.width*0.016,
          )),
        ],
      ),
    );
  }
}
