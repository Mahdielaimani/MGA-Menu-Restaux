// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialButton extends StatelessWidget {
  Icon iconSocial;
  Widget labelSocial;
  SocialButton({
    Key? key,
    required this.iconSocial,
    required this.labelSocial,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
        onPressed: () {},
        style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.white),
            padding: MaterialStatePropertyAll(
                EdgeInsets.fromLTRB(150, 17, 150, 17))),
        // Icon(Icons.person_pin_circle),
        icon: iconSocial,
        label: labelSocial);
  }
}
