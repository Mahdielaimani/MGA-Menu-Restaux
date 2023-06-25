import 'package:flutter/material.dart';

class LoginField extends StatelessWidget {
  final String hintText;
  const LoginField({
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 450,
      ),
      child: Container(
        height: 40,
        width: 450,
        child: TextFormField(
            controller: null,
            obscureText: false,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  // borderSide: BorderSide(color: Colors.green),
                  borderRadius: BorderRadius.circular(10)),
              // contentPadding: const EdgeInsets.only(left: 200, right: 200),
              focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                      color: Color.fromARGB(255, 131, 68, 248)),
                  borderRadius: BorderRadius.circular(10)),
              hintText: hintText,
            )),
      ),
    );
  }
}
