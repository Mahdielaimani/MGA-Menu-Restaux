part of '../screens/packages_screens.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool? isChecked = false;

    String val = 'one';
    return Scaffold(
      body: Ink(
        height: getSizeApp(context).height,
        width: getSizeApp(context).width,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    child: Image.asset('assets/images/logo.jpeg'),
                    width: 70,
                    height: 60,
                  ),
                  SizedBox(width: 20),
                  Text(
                    'Restaux',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: Colors.red,
                    ),
                  ),
                  const Spacer(
                    flex: 2,
                  ),
                  DropdownButton(
                    value: val,
                    items: const [
                      DropdownMenuItem(
                        value: 'one',
                        child: Text(
                          'English',
                          style: TextStyle(fontSize: 14, color: Colors.blue),
                        ),
                      ),
                      DropdownMenuItem(value: 'two', child: Text('عربي')),
                      DropdownMenuItem(value: 'threeo', child: Text('Deutsch')),
                      DropdownMenuItem(value: 'two', child: Text('Español')),
                      DropdownMenuItem(value: 'threeo', child: Text('Español')),
                    ],
                    onChanged: (String? newVal) {
                      // Handle dropdown value change
                      val = newVal!;
                    },
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Center(
                child: ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: 520),
                  child: Card(
                    elevation: 20,
                    child: Column(
                      children: [
                        const SizedBox(height: 20),
                        const Text(
                          'Log in to your account',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 24,
                          ),
                        ),
                        const SizedBox(height: 20),
                        SocialButton(
                          iconButtonS: const Icon(
                            FontAwesomeIcons.google,
                            color: Colors.black,
                            size: 15,
                          ),
                          labelButtonS: const Text(
                            'Log in with Google',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black87,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          paddingButtonS: EdgeInsets.fromLTRB(145, 18, 145, 18),
                        ),
                        const SizedBox(height: 10),
                        SocialButton(
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
                          paddingButtonS: EdgeInsets.fromLTRB(150, 18, 150, 18),
                        ),
                        const SizedBox(height: 15),
                        Row(
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
                        const LoginField(
                          hintText: 'E-mail',
                        ),
                        const SizedBox(height: 15),
                        const LoginField(hintText: 'Password '),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Checkbox(
                              value: isChecked,
                              onChanged: (newBool) {},
                            ),
                            Text('Remember me'),
                            const SizedBox(width: 220),
                            const InkWell(
                              child: Text(
                                'Forget Password?',
                                style: TextStyle(color: Colors.deepPurple),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20.0),
                        CustomButton(),
                        const SizedBox(height: 20.0),
                      ],
                    ),
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
                      style: TextStyle(fontSize: 12, color: Colors.deepPurple),
                    ),
                  ),
                  SizedBox(width: 20),
                  VerticalDivider(),
                  InkWell(
                    child: Text(
                      'Privacy Policy',
                      style: TextStyle(fontSize: 12, color: Colors.deepPurple),
                    ),
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
