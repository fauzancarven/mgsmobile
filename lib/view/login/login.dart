import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mgsapp/component/inputtext.dart';
import 'package:mgsapp/controller/login.dart';
import 'package:mgsapp/globals.dart';

import 'package:mgsapp/view/login/forgot.dart';

// ignore: must_be_immutable
class Login extends StatefulWidget {
  const Login({super.key});
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  Map<String, dynamic>? _userData;
  late LoginController _loginController;

  bool _isLoadingLogin = false;
  bool _isLoadingGoogle = false;
  bool _isLoadingFacebook = false;

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _loginController = LoginController(
      onUserDataChanged: (userData) {
        setState(() {
          _userData = userData;
          if (_userData != null) {
            usernameController.text = _userData!['email'];
          }
        });
      },
      onFacebook: (isLoadingFacebook) {
        setState(() {
          _isLoadingFacebook = isLoadingFacebook;
        });
      },
      onGoogle: (isLoadingGoogle) {
        setState(() {
          _isLoadingGoogle = isLoadingGoogle;
        });
      },
      onLogin: (isLoadingLogin) {
        setState(() {
          _isLoadingLogin = isLoadingLogin;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 50),
              Center(
                child: Image.asset("assets/images/logo-text.png", width: 200),
              ),
              SizedBox(height: 20),
              Text(
                "Login Aplikasi",
                style: GoogleFonts.poppins(
                  color: AppColors.texthead,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Inputtext(
                hintText: "Masukan email anda...",
                controller: usernameController,
                label: "Email",
                obscureText: false,
              ),
              SizedBox(height: 20),
              Inputtext(
                hintText: "Masukan Password anda...",
                controller: passwordController,
                label: "Password",
                obscureText: true,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ForgotPassword(),
                          ),
                        );
                      },
                      child: Text(
                        "Lupa Password?",
                        style: TextStyle(
                          color: const Color.fromARGB(255, 32, 147, 255),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () async {
                  _loginController.login(context);
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 36),
                  foregroundColor: Colors.white,
                  backgroundColor: AppColors.texthead, // Warna teks tombol
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), // Bentuk tombol
                  ),
                ),
                child:
                    _isLoadingLogin
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
                        : Text('Login'),
              ),
              SizedBox(height: 20),
              Center(child: Text("Atau Login Dengan")),
              SizedBox(height: 20),

              // Button Login Facebook
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF1877F2), // Warna Facebook
                ),
                onPressed:
                    _userData != null
                        ? _loginController.logOutFacebook
                        : _loginController.loginFacebook,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _isLoadingGoogle
                        ? SizedBox()
                        : Image.asset('assets/images/facebook.png', width: 20),
                    SizedBox(width: 10),
                    _isLoadingFacebook
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
                            Text(
                              'Loading...',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        )
                        : Text(
                          'Login dengan Facebook',
                          style: TextStyle(color: Colors.white),
                        ),
                  ],
                ),
              ),

              // Button Login Google
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Colors.grey),
                ),
                onPressed: _loginController.loginGoogle,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _isLoadingGoogle
                        ? SizedBox()
                        : Image.asset('assets/images/google.png', width: 20),
                    SizedBox(width: 10),
                    _isLoadingGoogle
                        ? Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 20,
                              width: 20,
                              child: CircularProgressIndicator(
                                strokeWidth: 2,
                                color: AppColors.texthead,
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Loading...',
                              style: TextStyle(color: AppColors.texthead),
                            ),
                          ],
                        )
                        : Text(
                          'Login dengan Google',
                          style: TextStyle(color: AppColors.texthead),
                        ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
