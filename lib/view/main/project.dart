import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mgsapp/api/google.dart';
import 'package:mgsapp/globals.dart';
import 'package:mgsapp/view/login/login.dart';
import 'package:motion_tab_bar_v2/motion-tab-controller.dart';

class ProjectPageTabController extends StatelessWidget {
  const ProjectPageTabController({
    required this.title,
    required this.controller,
    required this.context,
    super.key,
  });

  final String title;
  final MotionTabBarController controller;
  final dynamic context;

  void _logout() {
    GoogleSignInApi.logout();
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => Login()),
    );
  }

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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 10,
          children: [
            ElevatedButton(
              onPressed: _logout,
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: AppColors.texthead, // Warna teks tombol
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // Bentuk tombol
                ),
              ),
              child: const Text('Logout Application'),
            ),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: Colors.grey),
              ),
              onPressed: () => controller.index = 0,
              child: const Text(
                'Dashboard Page',
                style: TextStyle(color: AppColors.texthead),
              ),
            ),
            ElevatedButton(
              onPressed: () => controller.index = 1,
              child: const Text(
                'Home Page',
                style: TextStyle(color: AppColors.texthead),
              ),
            ),
            ElevatedButton(
              onPressed: () => controller.index = 2,
              child: const Text(
                'Profile Page',
                style: TextStyle(color: AppColors.texthead),
              ),
            ),
            ElevatedButton(
              onPressed: () => controller.index = 3,
              child: const Text(
                'Settings Page',
                style: TextStyle(color: AppColors.texthead),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
