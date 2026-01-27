import 'package:assignment_module16/module16_Assignmnet/widgets/CardItems.dart';
import 'package:assignment_module16/module16_Assignmnet/widgets/dummy%20data.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(3.0),
        child: GridView.builder(
          itemCount: 7,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 0,
            mainAxisSpacing: 0,
            childAspectRatio: 0.60,
          ),
          itemBuilder: (context, index) {
            return InkWell(
              onHover: (value) => true,
              onTap: () {},
              child: CardItems(course: courses[index]),
            );
          },
        ),
      ),
      // body: CardItems(),
    );
  }
}
