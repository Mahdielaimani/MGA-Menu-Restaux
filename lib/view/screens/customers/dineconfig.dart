import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../helpers/appcolors.dart';

class DineConfig extends StatefulWidget {
  const DineConfig({super.key});

  @override
  State<DineConfig> createState() => _DineConfigState();
}

class _DineConfigState extends State<DineConfig> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: Ink(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(
          vertical: 10,
        ),
        decoration: BoxDecoration(
          color: AppColors.noteColor,
          // color: Color.fromARGB(255, 236, 228, 228).withOpacity(.3),
          border: Border.all(color: AppColors.purpleColor, width: 1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Wrap(
                children: [
                  SizedBox(width: 10),
                  Icon(
                    FontAwesomeIcons.circleExclamation,
                    color: AppColors.purpleColor,
                    size: 16,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    'Enable Customer Form Options in',
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Text(
                      " Dine-In Configurations ",
                      style: TextStyle(
                        color: AppColors.purpleColor,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  Text(
                    " to keep your customers’ information.",
                    style: TextStyle(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
