import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mgsapp/api/google.dart';
import 'package:mgsapp/globals.dart';
import 'package:mgsapp/view/login/login.dart';
import 'package:motion_tab_bar_v2/motion-tab-controller.dart';

class ProfilePageTabController extends StatelessWidget {
  const ProfilePageTabController({
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
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.fromLTRB(10, 2, 10, 2),
                child: Column(
                  children: [
                    TextField(
                      style: TextStyle(
                        fontSize: 18,
                        fontStyle: FontStyle.italic,
                        color: Colors.blue,
                      ),
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.tag), // Icon di sebelah kiri
                        // suffixIcon: Icon(Icons.clear), // Icon di sebelah kanan
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: const Color.fromARGB(255, 223, 223, 223),
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: const Color.fromARGB(255, 223, 223, 223),
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: 'ID00000',
                        labelText: 'Kode Personal',
                        contentPadding: EdgeInsets.all(0),
                        fillColor: Colors.grey.shade300,
                        filled: true,
                      ),
                    ),
                    SizedBox(height: 5),
                    TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person), // Icon di sebelah kiri
                        // suffixIcon: Icon(Icons.clear), // Icon di sebelah kanan
                        border: OutlineInputBorder(),
                        hintText: 'Syahrul Fauzan',
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 0,
                          vertical: 0,
                        ),
                        suffixIcon: Icon(Icons.edit),
                      ),
                      enabled: false,
                    ),
                    SizedBox(height: 5),
                    TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.tag), // Icon di sebelah kiri
                        // suffixIcon: Icon(Icons.clear), // Icon di sebelah kanan
                        border: OutlineInputBorder(),
                        hintText: 'ID00004',
                        contentPadding: EdgeInsets.all(0),
                      ),
                      enabled: false,
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.fromLTRB(10, 20, 10, 2),
                child: Text("Account"),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.fromLTRB(10, 2, 10, 2),
                padding: EdgeInsets.all(10),
                color: Colors.black12,
                height: 100,
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
                  child: const Text(
                    'Logout Aplikasi',
                    style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
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
