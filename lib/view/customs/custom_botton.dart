import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../routes.dart';

class CustomBotton extends StatelessWidget {
  const CustomBotton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 47, right: 47),
      height: 35,
      child: ElevatedButton(
        style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.deepPurple),
            padding:
                MaterialStatePropertyAll(EdgeInsets.fromLTRB(180, 0, 180, 0))),
        onPressed: () {
          router.pushNamed('menuscreen');
        },
        child: const Text('Login',
            style: TextStyle(
              // color: Colors.gre,
              fontSize: 15,
              fontWeight: FontWeight.w400,
            )),
      ),
    );
  }
}
