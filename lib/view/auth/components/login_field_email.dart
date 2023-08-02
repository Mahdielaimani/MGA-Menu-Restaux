part of 'pack_components.dart';

class LoginFieldEmail extends StatelessWidget {
  const LoginFieldEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: ResponsiveValue(context,
              defaultValue: 440, valueWhen: isMobileTabletField)
          .value,
      child: TextFormField(
        controller: null,
        obscureText: false,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.cgreyColor),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.bSideColor),
            borderRadius: BorderRadius.circular(10),
          ),
          hintText: 'E-mail',
          hintStyle: TextStyle(color: AppColors.greyColor),
        ),
      ),
    );
  }
}
