import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../core/function/functions.dart';

class TranslationCenter extends StatelessWidget {
  const TranslationCenter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: Container(
        width: getSizeApp(context).width,
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        margin: const EdgeInsets.symmetric(vertical: 15),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 236, 228, 228).withOpacity(.3),
          border: Border.all(color: Colors.deepPurple, width: 1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Wrap(
          children: [
            const Icon(
              FontAwesomeIcons.circleExclamation,
              color: Colors.deepPurple,
              size: 16,
            ),
            const SizedBox(width: 10),
            const Text(
              'You can translate your menu in multiple languages with ',
            ),
            InkWell(
              onTap: () {},
              child: const Text(
                "Translation Center.",
                style: TextStyle(
                  color: Colors.deepPurple,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
