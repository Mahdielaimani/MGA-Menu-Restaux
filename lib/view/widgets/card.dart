import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../core/function/functions.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getSizeApp(context).width,
      padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
      margin: const EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.deepPurple, width: 1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Wrap(
        children: [
          const Icon(
            FontAwesomeIcons.circleExclamation,
            size: 16,
          ),
          const SizedBox(width: 10),
          const Text('Menu Management'),
          InkWell(
            onTap: () {},
            child: const Text(
              "",
              style: TextStyle(
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
