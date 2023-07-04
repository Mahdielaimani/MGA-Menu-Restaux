import 'package:flutter/material.dart';

class LoginFieldPassword extends StatefulWidget {
  @override
  _LoginFieldPasswordState createState() => _LoginFieldPasswordState();
}

class _LoginFieldPasswordState extends State<LoginFieldPassword> {
  bool passwordObscure = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 440,
      child: TextFormField(
        controller: null,
        obscureText: passwordObscure,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color:
                  Color.fromARGB(250, 250, 250, 250), // Set border color here
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 131, 68, 248)),
            borderRadius: BorderRadius.circular(10),
          ),
          hintText: 'Password',
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                passwordObscure = !passwordObscure;
              });
            },
            icon: Icon(
              passwordObscure
                  ? Icons.visibility_off_outlined
                  : Icons.visibility,
              size: 20,
            ),
          ),
        ),
      ),
    );
  }
}
