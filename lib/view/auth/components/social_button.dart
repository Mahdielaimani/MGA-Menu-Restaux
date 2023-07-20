part of 'pack_components.dart';

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
    return OutlinedButton.icon(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(AppColors.whiteColor),
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
    );
  }
}
