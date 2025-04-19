import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mgsapp/api/google.dart';
import 'package:mgsapp/globals.dart';
import 'package:mgsapp/view/login/login.dart';
import 'package:motion_tab_bar_v2/motion-tab-controller.dart';

class HomePageTabController extends StatelessWidget {
  const HomePageTabController({
    required this.title,
    required this.controller,
    required this.context,
    super.key,
  });

  final String title;
  final MotionTabBarController controller;
  final dynamic context;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: GoogleFonts.poppins(
            color: AppColors.texthead,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [],
        backgroundColor: AppColors.background,
      ),
      backgroundColor: AppColors.background,
    );
  }
}
