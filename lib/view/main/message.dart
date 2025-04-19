import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mgsapp/api/google.dart';
import 'package:mgsapp/globals.dart';
import 'package:mgsapp/view/login/login.dart';
import 'package:motion_tab_bar_v2/motion-tab-controller.dart';

class MessagePageTabController extends StatefulWidget {
  const MessagePageTabController({
    required this.title,
    required this.controller,
    required this.context,
    super.key,
  });

  final String title;
  final MotionTabBarController controller;
  final dynamic context;

  @override
  State<MessagePageTabController> createState() =>
      _MessagePageTabControllerState();
}

class _MessagePageTabControllerState extends State<MessagePageTabController> {
  void _logout() {
    GoogleSignInApi.logout();
    Navigator.pushReplacement(
      widget.context,
      MaterialPageRoute(builder: (context) => Login()),
    );
  }

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
        backgroundColor: AppColors.background,
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        ],
      ),
      backgroundColor: AppColors.background,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 10,
          children: [
            ListTile(
              leading: CircleAvatar(),
              title: Text("Fauzan caren"),
              subtitle: Text("Selamat Siang, Saya dari ABSDAF ..."),
            ),
            ListTile(
              leading: CircleAvatar(),
              title: Text("Fauzan caren"),
              subtitle: Text("Selamat Siang, Saya dari ABSDAF ..."),
            ),
            ListTile(
              leading: CircleAvatar(),
              title: Text("Fauzan caren"),
              subtitle: Text("Selamat Siang, Saya dari ABSDAF ..."),
            ),
            ListTile(
              leading: CircleAvatar(),
              title: Text("Fauzan caren"),
              subtitle: Text(
                "Selamat Siang, Saya dari ABSDAF ...Selamat Siang, Saya dari ABSDAF ...",
              ),
            ),
            ListTile(
              leading: CircleAvatar(),
              title: Text("Fauzan caren"),
              subtitle: Text(
                "Selamat Siang, Saya dari ABSDAF ...Selamat Siang, Saya dari ABSDAF ...",
              ),
            ),
            ListTile(
              leading: CircleAvatar(),
              title: Text("Fauzan caren"),
              subtitle: Text(
                "Selamat Siang, Saya dari ABSDAF ...Selamat Siang, Saya dari ABSDAF ...",
              ),
            ),
            ListTile(
              leading: CircleAvatar(),
              title: Text("Fauzan caren"),
              subtitle: Text(
                "Selamat Siang, Saya dari ABSDAF ...Selamat Siang, Saya dari ABSDAF ...",
              ),
            ),
            ListTile(
              leading: CircleAvatar(),
              title: Text("Ayunda Safitri"),
              subtitle: Text("Selamat Siang, Saya dari ABSDAF ..."),
            ),
            ListTile(
              leading: CircleAvatar(),
              title: Text("Fauzan caren"),
              subtitle: Text(
                "Selamat Siang, Saya dari ABSDAF ...Selamat Siang, Saya dari ABSDAF ...",
              ),
            ),
            ListTile(
              leading: CircleAvatar(),
              title: Text("Fauzan caren"),
              subtitle: Text(
                "Selamat Siang, Saya dari ABSDAF ...Selamat Siang, Saya dari ABSDAF ...",
              ),
            ),
            ListTile(
              leading: CircleAvatar(),
              title: Text("Ayunda Safitri"),
              subtitle: Text("Selamat Siang, Saya dari ABSDAF ..."),
            ),
            ListTile(
              leading: CircleAvatar(),
              title: Text("Fauzan caren"),
              subtitle: Text(
                "Selamat Siang, Saya dari ABSDAF ...Selamat Siang, Saya dari ABSDAF ...",
              ),
            ),
            ListTile(
              leading: CircleAvatar(),
              title: Text("Fauzan caren"),
              subtitle: Text(
                "Selamat Siang, Saya dari ABSDAF ...Selamat Siang, Saya dari ABSDAF ...",
              ),
            ),
            ListTile(
              leading: CircleAvatar(),
              title: Text("Ayunda Safitri"),
              subtitle: Text("Selamat Siang, Saya dari ABSDAF ..."),
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
