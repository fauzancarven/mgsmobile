import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mgsapp/api/google.dart';
import 'package:mgsapp/globals.dart';
import 'package:mgsapp/view/login/login.dart';
import 'package:motion_tab_bar_v2/motion-tab-controller.dart';

class ProjectPageTabController extends StatefulWidget {
  const ProjectPageTabController({
    required this.title,
    required this.controller,
    required this.context,
    super.key,
  });

  final String title;
  final MotionTabBarController controller;
  final dynamic context;

  @override
  State<ProjectPageTabController> createState() =>
      _ProjectPageTabControllerState();
}

class _ProjectPageTabControllerState extends State<ProjectPageTabController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: GoogleFonts.poppins(
            color: AppColors.texthead,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        ],
        backgroundColor: AppColors.background,
      ),
      backgroundColor: AppColors.background,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 10,
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: Image.asset("assets/images/empty.png", width: 200),
                  ),
                  Text(
                    "Belum ada data yang dibuat",
                    style: GoogleFonts.poppins(
                      color: AppColors.texthead,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.texthead,
        foregroundColor: Colors.white,
        shape: const CircleBorder(),
        elevation: 10,
        onPressed: () {
          setState(() {});
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
