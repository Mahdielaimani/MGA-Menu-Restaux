part of '../../../../packages/packages.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBackColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              LoginBar(),
              Center(
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    Card(
                      elevation: 15,
                      margin: EdgeInsets.all(20),
                      child: SizedBox(
                        height: 461,
                        width: 502,
                        child: Column(
                          children: [
                            const SizedBox(height: 25),
                            const Text(
                              'Log in to your account',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 24,
                              ),
                            ),
                            const SizedBox(height: 20),
                            Expanded(
                              child: SocialButton(
                                  iconButtonS: const Icon(
                                    FontAwesomeIcons.google,
                                    color: AppColors.kblackColor,
                                    size: 15,
                                  ),
                                  labelButtonS: const Text(
                                    'Log in with Google',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: AppColors.tblackColor,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  paddingButtonS: ResponsiveValue(context,
                                          defaultValue: EdgeInsets.fromLTRB(
                                              140, 18, 140, 18),
                                          valueWhen: isMobileTabletS)
                                      .value
                                  // EdgeInsets.fromLTRB(140, 18, 140, 18),
                                  ),
                            ),
                            const SizedBox(height: 10),
                            Expanded(
                              child: SocialButton(
                                  iconButtonS: const Icon(
                                    FontAwesomeIcons.apple,
                                    color: Colors.black,
                                    size: 16,
                                  ),
                                  labelButtonS: const Text(
                                    'Log in with Apple',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black87,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  paddingButtonS: ResponsiveValue(context,
                                          defaultValue: EdgeInsets.fromLTRB(
                                              140, 18, 140, 18),
                                          valueWhen: isMobileTabletS)
                                      .value),
                            ),
                            const SizedBox(height: 15),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Divider(
                                    indent: 40,
                                    endIndent: 5,
                                  ),
                                ),
                                Text(
                                  'or',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Expanded(
                                  child: Divider(
                                    indent: 5,
                                    endIndent: 40,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 15),
                            Expanded(child: LoginFieldEmail()),
                            const SizedBox(height: 20),
                            Expanded(child: LoginFieldPassword()),
                            const SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Checkbox(
                                  side: BorderSide(
                                    color: AppColors.kgreyColor,
                                  ),
                                  activeColor: AppColors.kPurpleColor,
                                  tristate:
                                      false, // Set to false for a two-state checkbox
                                  value: isChecked,
                                  onChanged: (newBool) {
                                    setState(() {
                                      isChecked = newBool ?? false;
                                      print(isChecked);
                                    });
                                  },
                                ),
                                const Text('Remember me'),
                                const SizedBox(width: 220),
                                InkWell(
                                  child: Text(
                                    'Forgot Password?',
                                    style: TextStyle(
                                        color: AppColors.kPurpleColor),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 25.0),
                            const Expanded(
                              child: CustomButton(),
                            ),
                            const SizedBox(height: 20.0),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 40.0),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          child: Text(
                            'Terms of Service',
                            style: TextStyle(
                                fontSize: 12, color: AppColors.kPurpleColor),
                          ),
                        ),
                        SizedBox(width: 20),
                        VerticalDivider(),
                        InkWell(
                          child: Text(
                            'Privacy Policy',
                            style: TextStyle(
                                fontSize: 12, color: AppColors.kPurpleColor),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
