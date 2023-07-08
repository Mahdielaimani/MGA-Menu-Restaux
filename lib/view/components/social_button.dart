import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_value.dart';

class SocialButton extends StatelessWidget {
  final Icon iconButtonS;
  final Widget labelButtonS;
  final EdgeInsetsGeometry? paddingButtonS;

  SocialButton({
    Key? key,
    required this.iconButtonS,
    required this.labelButtonS,
    required this.paddingButtonS,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveVisibility(
      child: OutlinedButton.icon(
        onPressed: () {},
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.white),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          padding: MaterialStateProperty.all(
            paddingButtonS,
          ),
        ),
        icon: iconButtonS,
        label: labelButtonS,
      ),
    );
  }
}
