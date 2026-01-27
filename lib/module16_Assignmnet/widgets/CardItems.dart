import 'package:assignment_module16/module16_Assignmnet/widgets/dummy%20data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardItems extends StatelessWidget {
  final Course course;
  const CardItems({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(12),
              bottom: Radius.zero,
            ),
            child: Image.network(
              course.img,
              height: 120.h,
              // width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 5),
          Row(
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 25.h,
                width: 30.w,

                child: Card(
                  color: Colors.grey.shade300,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(2)),
                  ),
                  child: Center(
                    child: Text(course.batch, style: TextStyle(fontSize: 7)),
                  ),
                ),
              ),

              SizedBox(
                height: 25.h,
                // width: 45.w,
                child: Card(
                  color: Colors.grey.shade300,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(2)),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.chair_alt,
                          color: Colors.grey.shade900,
                          size: 7,
                        ),
                        Text(course.seat, style: TextStyle(fontSize: 7)),
                      ],
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 25.h,
                width: 45.w,
                child: Card(
                  color: Colors.grey.shade300,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(2)),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.chair_alt,
                          color: Colors.grey.shade900,
                          size: 7,
                        ),
                        Text(course.days, style: TextStyle(fontSize: 7)),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Divider(thickness: 1, color: Colors.black12),

          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
                course.title,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
          ),

          SizedBox(height: 20.h),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                padding: EdgeInsets.all(16),
                width: double.infinity,

                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade300,
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3),
                    ),
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("বিস্তারিত দেখুন", style: TextStyle(fontSize: 8.sp)),
                      Icon(Icons.arrow_forward),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
