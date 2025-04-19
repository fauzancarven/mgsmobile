import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mgsapp/api/google.dart';
import 'package:mgsapp/globals.dart';
import 'package:mgsapp/view/login/login.dart';
import 'package:motion_tab_bar_v2/motion-tab-controller.dart';

class ProfilePageTabController extends StatelessWidget {
  ProfilePageTabController({
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
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: AppColors.background,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 75,
                backgroundImage: NetworkImage(
                  'https://instagram.fcgk43-1.fna.fbcdn.net/v/t51.2885-19/418639251_731448352265803_4802224467133417590_n.jpg?stp=dst-jpg_s150x150_tt6&_nc_ht=instagram.fcgk43-1.fna.fbcdn.net&_nc_cat=107&_nc_oc=Q6cZ2QGj3oSg-bX4kelk3xbiPuY2DTn1mPpNGz-2kYILwKrp-2R5t3Pxu827jI-jxv7SeQjMiJdb3CRFivPbiKy6RqoC&_nc_ohc=HurwsVtM7rAQ7kNvwFJ9vrP&_nc_gid=mDNiQPwsxsilALFZU2AP-g&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AfEh-NMKruNQgJ-Rf-NxANqFzJqoJooGM_k0XHmdiMVAQg&oe=68093028&_nc_sid=8b3546',
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Syahrul Fauzan",
                style: GoogleFonts.poppins(
                  color: AppColors.texthead,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text("Manager IT"),
              SizedBox(height: 30),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.fromLTRB(10, 2, 10, 2),
                child: Text("Personal"),
              ),
              ListTile(
                leading: Icon(Icons.tag),
                title: Text("NIP", style: TextStyle(color: AppColors.texthead)),
                subtitle: Text(
                  "ID00004",
                  style: TextStyle(
                    color: AppColors.texthead,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: Icon(Icons.chevron_right, size: 20),
                style: ListTileStyle.list,
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text(
                  "Username",
                  style: TextStyle(color: AppColors.texthead),
                ),
                subtitle: Text(
                  "Syahrul Fauzan",
                  style: TextStyle(
                    color: AppColors.texthead,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: Icon(Icons.chevron_right, size: 20),
              ),
              ListTile(
                leading: Icon(Icons.group),
                title: Text(
                  "Level",
                  style: TextStyle(color: AppColors.texthead),
                ),
                subtitle: Text(
                  "Administrator",
                  style: TextStyle(
                    color: AppColors.texthead,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: Icon(Icons.chevron_right, size: 20),
              ),
              SizedBox(height: 30),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.fromLTRB(10, 2, 10, 2),
                child: Text("Social Media"),
              ),
              ListTile(
                leading: Icon(Icons.facebook),
                title: Text(
                  "Facebook",
                  style: TextStyle(color: AppColors.texthead),
                ),
                subtitle: Text(
                  "Belum Terhubung",
                  style: TextStyle(
                    color: AppColors.texthead,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: Icon(Icons.chevron_right, size: 20),
              ),
              ListTile(
                leading: Icon(Icons.g_mobiledata_sharp),
                title: Text(
                  "Google",
                  style: TextStyle(color: AppColors.texthead),
                ),
                subtitle: Text(
                  "Belum Terhubung",
                  style: TextStyle(
                    color: AppColors.texthead,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: Icon(Icons.chevron_right, size: 20),
              ),
              SizedBox(height: 50),
              Container(
                margin: EdgeInsets.fromLTRB(10, 2, 10, 2),
                child: ElevatedButton(
                  onPressed: _logout,
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 36),
                    foregroundColor: Colors.white,
                    backgroundColor: AppColors.texthead, // Warna teks tombol
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10), // Bentuk tombol
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.key),
                      SizedBox(width: 10),
                      Text(
                        'Change Password',
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10, 2, 10, 2),
                child: ElevatedButton(
                  onPressed: _logout,
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 36),
                    foregroundColor: Colors.white,
                    backgroundColor: AppColors.texthead, // Warna teks tombol
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10), // Bentuk tombol
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.logout),
                      SizedBox(width: 10),
                      Text(
                        'Logout Aplikasi',
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
