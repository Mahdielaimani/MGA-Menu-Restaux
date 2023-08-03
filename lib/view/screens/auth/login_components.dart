part of '../../../../packages/packages.dart';

class LoginBar extends StatefulWidget {
  const LoginBar({super.key});

  @override
  State<LoginBar> createState() => _LoginBarState();
}

class _LoginBarState extends State<LoginBar> {
  String _selectedLanguage = 'English';

  final List<String> _languages = ['English', 'Arabic', 'French'];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 70,
          height: 60,
          child: Image.asset(AppAssets.kLogo),
        ),
        const Text(
          'Restaux',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 18,
            color: Colors.red,
          ),
        ),
        const Spacer(
          flex: 2,
        ),
        SizedBox(
          child: DropdownButton<String>(
            focusColor: AppColors.ktranspColor,
            underline: Container(
              color: AppColors.ktranspColor,
            ),
            value: _selectedLanguage,
            icon: const Icon(Icons.arrow_drop_down),
            style: const TextStyle(
                color: AppColors.kPurpleColor,
                fontSize: 14,
                fontWeight: FontWeight.w400),
            onChanged: (String? newValue) {
              setState(() {
                _selectedLanguage = newValue!;
              });
            },
            items: _languages.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: SizedBox(
                  child: Center(
                    child: Text(value),
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}

//loginFieldEmail

class LoginFieldEmail extends StatelessWidget {
  const LoginFieldEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: ResponsiveValue(context,
              defaultValue: 440, valueWhen: isMobileTabletField)
          .value,
      child: TextFormField(
        controller: null,
        obscureText: false,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColors.kcgreyColor),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColors.kbSideColor),
            borderRadius: BorderRadius.circular(10),
          ),
          hintText: 'E-mail',
          hintStyle: const TextStyle(color: AppColors.kgreyColor),
        ),
      ),
    );
  }
}

//loginFieldPassword
class LoginFieldPassword extends StatefulWidget {
  @override
  _LoginFieldPasswordState createState() => _LoginFieldPasswordState();
}

class _LoginFieldPasswordState extends State<LoginFieldPassword> {
  bool passwordObscure = true;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: ResponsiveValue(context,
              defaultValue: 440, valueWhen: isMobileTabletField)
          .value,
      child: TextFormField(
        controller: null,
        obscureText: passwordObscure,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColors.kcgreyColor),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColors.kbSideColor),
            borderRadius: BorderRadius.circular(10),
          ),
          hintText: 'Password',
          hintStyle: const TextStyle(color: AppColors.kgreyColor),
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

//socialButtons

class SocialButton extends StatelessWidget {
  final Icon iconButtonS;
  final Widget labelButtonS;
  final EdgeInsetsGeometry? paddingButtonS;

  const SocialButton({
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
        backgroundColor: MaterialStateProperty.all(AppColors.kwhiteColor),
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
