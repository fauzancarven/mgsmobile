import 'package:flutter/material.dart';
import 'package:mgsapp/globals.dart';

class Inputtext extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  final controller;
  final String hintText;
  final String label;
  final bool obscureText;

  const Inputtext({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
    required this.label,
  });

  @override
  State<Inputtext> createState() => _InputtextState();
}

class _InputtextState extends State<Inputtext> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    if (widget.obscureText) {
      return TextFormField(
        controller: widget.controller,
        obscureText: _isObscure,
        style: TextStyle(fontSize: 14),
        decoration: InputDecoration(
          suffixIcon: IconButton(
            icon: Icon(_isObscure ? Icons.visibility : Icons.visibility_off),
            onPressed: () {
              setState(() {
                _isObscure = !_isObscure;
              });
            },
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: const Color.fromARGB(255, 223, 223, 223),
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.textdetail),
            borderRadius: BorderRadius.circular(10),
          ),
          fillColor: const Color.fromARGB(255, 252, 253, 255),
          filled: true,
          hintText: widget.hintText,
          labelText: widget.label,
        ),
      );
    } else {
      return TextFormField(
        controller: widget.controller,
        obscureText: widget.obscureText,
        style: TextStyle(fontSize: 14),
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: const Color.fromARGB(255, 223, 223, 223),
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.textdetail),
            borderRadius: BorderRadius.circular(10),
          ),
          fillColor: const Color.fromARGB(255, 252, 253, 255),
          filled: true,
          hintText: widget.hintText,
          labelText: widget.label,
        ),
      );
    }
  }
}
