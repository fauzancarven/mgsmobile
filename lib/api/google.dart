// ignore_for_file: avoid_print

import 'package:google_sign_in/google_sign_in.dart';

class GoogleSignInApi {
  static final GoogleSignIn _googleSignIn = GoogleSignIn();

  static Future<GoogleSignInAccount?> login() => _googleSignIn.signIn();

  static Future logout() async {
    try {
      await _googleSignIn.signOut();
    } catch (e) {
      print('Error logout: $e');
    }
  }
}
