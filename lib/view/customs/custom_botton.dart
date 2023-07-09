import 'package:flutter/material.dart';
import '../../routes.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: ButtonStyle(
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          backgroundColor: MaterialStatePropertyAll(
            Color(0xF5F5F5F5),
          ),
          padding:
              MaterialStatePropertyAll(EdgeInsets.fromLTRB(210, 18, 210, 18))),
      onPressed: () {
        router.pushNamed('dashboardscreen');
      },
      child: const Text('Login',
          style: TextStyle(
            color: Color.fromARGB(255, 199, 197, 197),
            // color: Colors.gre,
            fontSize: 15,
            fontWeight: FontWeight.w400,
          )),
    );
  }
}
