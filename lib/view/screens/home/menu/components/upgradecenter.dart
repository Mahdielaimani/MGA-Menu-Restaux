import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/function/functions.dart';

class UpgradeCenter extends StatelessWidget {
  const UpgradeCenter({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(300, 0, 300, 0),
      child: Container(
        width: getSizeApp(context).width,
        padding: const EdgeInsets.symmetric(
          vertical: 10,
        ),
        // margin: const EdgeInsets.symmetric(vertical: 15),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 236, 228, 228).withOpacity(.3),
          border: Border.all(color: Colors.deepPurple, width: 1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Wrap(
              children: [
                const SizedBox(width: 10),
                const Icon(
                  FontAwesomeIcons.circleExclamation,
                  color: Colors.deepPurple,
                  size: 16,
                ),
                const SizedBox(width: 10),
                const Text(
                  'You can only have 80 items with trial plan. ',
                ),
                InkWell(
                  onTap: () {},
                  child: const Text(
                    "Upgrade",
                    style: TextStyle(
                      color: Colors.deepPurple,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
                Text(
                  " for more.",
                  style: TextStyle(),
                ),
                SizedBox(
                  width: 100,
                ),
                Text(
                  "10 items left",
                  style: TextStyle(
                    color: Colors.deepPurple,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
