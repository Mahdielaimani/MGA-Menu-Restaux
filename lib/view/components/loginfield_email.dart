import 'package:flutter/material.dart';

class LoginFieldEmail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 40,
        width: 440,
        child: TextFormField(
          controller: null,
          obscureText: false,
          decoration: InputDecoration(
            border: OutlineInputBorder(

                // borderSide: BorderSide(color: Colors.green),
                borderRadius: BorderRadius.circular(10)),
            // contentPadding: const EdgeInsets.only(left: 200, right: 200),
            focusedBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: Color.fromARGB(255, 131, 68, 248)),
                borderRadius: BorderRadius.circular(10)),
            hintText: 'Email',
          ),
        ));
  }
}
