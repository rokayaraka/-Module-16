import 'package:assignment_module16/module16_Assignmnet/responsiveLayout.dart';
import 'package:assignment_module16/module16_Assignmnet/widgets/DesktopHomePage.dart';
import 'package:assignment_module16/module16_Assignmnet/widgets/MobileHomePage.dart';
import 'package:flutter/material.dart';

class ResponsiveHome extends StatefulWidget {
  const ResponsiveHome({super.key});

  @override
  State<ResponsiveHome> createState() => _ResponsiveHomeState();
}

class _ResponsiveHomeState extends State<ResponsiveHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResposiveLayoutsPage(
        mobileBody: MobileHomePage(),
        desktopBody: DesktopHomePage(),
      ),
    );
  }
}
