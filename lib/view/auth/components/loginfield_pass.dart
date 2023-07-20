part of 'pack_components.dart';

class LoginFieldPassword extends StatefulWidget {
  @override
  _LoginFieldPasswordState createState() => _LoginFieldPasswordState();
}

class _LoginFieldPasswordState extends State<LoginFieldPassword> {
  bool passwordObscure = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: ResponsiveValue(context,
              defaultValue: 440, valueWhen: isMobileTabletField)
          .value,
      child: TextFormField(
        controller: null,
        obscureText: passwordObscure,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.cgreyColor),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.bSideColor),
            borderRadius: BorderRadius.circular(10),
          ),
          hintText: 'Password',
          hintStyle: TextStyle(color: AppColors.greyColor),
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                passwordObscure = !passwordObscure;
              });
            },
            icon: Icon(
              passwordObscure
                  ? Icons.visibility_off_outlined
                  : Icons.visibility,
              size: 20,
            ),
          ),
        ),
      ),
    );
  }
}
