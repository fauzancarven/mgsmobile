import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:mgsapp/api/google.dart';
import 'package:mgsapp/view/main/home.dart';

class LoginController {
  final Function(Map<String, dynamic>?) onUserDataChanged;
  final Function(bool) onFacebook;
  final Function(bool) onGoogle;
  final Function(bool) onLogin;
  Map<String, dynamic>? _userData;

  LoginController({
    required this.onUserDataChanged,
    required this.onFacebook,
    required this.onGoogle,
    required this.onLogin,
  });

  Future<void> loginGoogle() async {
    onGoogle(true);
    final user = await GoogleSignInApi.login();
    if (user != null) {
      _userData = {'name': user.displayName, 'email': user.email};
      onUserDataChanged(_userData);
    }
    onGoogle(false);
  }

  Future<void> logoutGoogle() async {
    GoogleSignInApi.logout();
    onUserDataChanged(null);
  }

  Future<void> loginFacebook() async {
    onFacebook(true);
    final LoginResult result = await FacebookAuth.instance.login(
      permissions: ['email', 'public_profile'],
    );
    if (result.status == LoginStatus.success) {
      final userData = await FacebookAuth.instance.getUserData();
      _userData = userData;
      onUserDataChanged(_userData);
    }
    onFacebook(false);
  }

  Future<void> logOutFacebook() async {
    await FacebookAuth.instance.logOut();
    onUserDataChanged(null);
  }

  Future<void> login(context) async {
    onLogin(true);
    await Future.delayed(Duration(seconds: 2));

    onLogin(false);
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => HomePage()),
    );
  }
}
