import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mgsapp/component/inputtext.dart';
import 'package:mgsapp/globals.dart';
import 'package:mgsapp/view/login/sendmail.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final emailControler = TextEditingController();
  bool _isLoadingSendMail = false;

  void _sendEmail() async {
    setState(() {
      _isLoadingSendMail = true;
    });
    await Future.delayed(Duration(seconds: 2));
    setState(() {
      _isLoadingSendMail = false;

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => Sendmail(data: "Fauzancaren@gmail.com"),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.arrow_back),
                SizedBox(width: 8), // Atur jarak antara ikon dan judul
                Text(
                  'Kembali',
                  style: GoogleFonts.poppins(
                    color: AppColors.texthead,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          backgroundColor: Colors.transparent,
        ),
        backgroundColor: AppColors.background,
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 50),
                Center(
                  child: Image.asset("assets/images/logo-text.png", width: 200),
                ),
                SizedBox(height: 20),
                Text(
                  "Lupa Password!",
                  style: GoogleFonts.poppins(
                    color: AppColors.texthead,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "kami akan mengirimkan link verifikasi ke alamat email anda, silahkan masukan email anda!",
                  style: GoogleFonts.poppins(
                    color: AppColors.texthead,
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                SizedBox(height: 10),
                Inputtext(
                  hintText: "Masukan Email anda...",
                  controller: emailControler,
                  label: "Email",
                  obscureText: false,
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: _sendEmail,
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 36),
                    foregroundColor: Colors.white,
                    backgroundColor: AppColors.texthead, // Warna teks tombol
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10), // Bentuk tombol
                    ),
                  ),
                  child:
                      _isLoadingSendMail
                          ? Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 20,
                                width: 20,
                                child: CircularProgressIndicator(
                                  strokeWidth: 2,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(width: 10),
                              Text('Loading...'),
                            ],
                          )
                          : Text('Email'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
