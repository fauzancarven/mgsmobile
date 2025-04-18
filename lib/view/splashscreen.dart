import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mgsapp/globals.dart';
import 'package:mgsapp/view/login/login.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "MGS APPLICATION",
                  style: GoogleFonts.poppins(
                    color: AppColors.texthead,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Aplikasi untuk internal perusahaan",
                  style: GoogleFonts.poppins(
                    color: AppColors.textdetail,
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                SizedBox(child: Image.asset("assets/images/logo-text.png")),
                SizedBox(height: 10),
                Text(
                  "Our Brand",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/logo-brj.png", width: 60),
                    Image.asset("assets/images/logo-rrj.png", width: 60),
                  ],
                ),
                Text(
                  "CV. MAHIERA GLOBAL SOLUTION",
                  style: GoogleFonts.poppins(
                    color: AppColors.textdetail,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
      nextScreen: Login(),
      splashIconSize: 800,
    );
  }
}
