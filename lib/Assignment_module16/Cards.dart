import 'package:assignment_module16/Assignment_module16/batch_course_details.dart';
import 'package:assignment_module16/Assignment_module16/dummy%20data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Cards extends StatefulWidget {
  final Course course;

  const Cards({super.key, required this.course});

  @override
  State<Cards> createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  double borderWidth = 0.3;

  @override
  Widget build(BuildContext context) {
    double cornerValue = 10.w;
    return InkWell(
       onTap: (){},
      onHover: (value){
        if(value){
          setState(() {
            borderWidth=1;
          });
        }
        else{
          setState(() {
         borderWidth=0.3;
          });
        }
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(cornerValue),
          border: Border.all(width: borderWidth, color: Colors.black87),
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 4,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius:BorderRadius.only(
                    topLeft: Radius.circular(cornerValue),
                    topRight: Radius.circular(cornerValue),
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(cornerValue),
                    topRight: Radius.circular(cornerValue),
                  ),
                  child: Image.network(widget.course.img, fit: BoxFit.fill,),
                ),
              ),
            ),
            Expanded(flex: 1, child: BatchCourseDetails(course: widget.course,),),
      
            Expanded(
              flex: 3,
              child: Padding(
                padding: EdgeInsetsGeometry.all(10.w),
                child: Text(
                  widget.course.title,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                    fontSize: MediaQuery.of(context).size.width*0.04,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.w),
                decoration: BoxDecoration(
                  color: Color(0xfff9f9fa),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(cornerValue),
                    bottomRight: Radius.circular(cornerValue),
                  ),
                ),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("বিস্তারিত দেখুন ", style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width*0.03,
                        )),
                      Icon(Icons.arrow_forward),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
