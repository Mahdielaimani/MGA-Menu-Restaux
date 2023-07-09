part of '../screens/packages_screens.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    bool isChecked = false;
    String val = 'one';

    return Scaffold(
      backgroundColor: const Color.fromARGB(250, 250, 250, 250),
      appBar: AppBar(
        elevation: 0, // No elevation
        backgroundColor: const Color.fromARGB(250, 250, 250, 250),
        title: Row(
          children: [
            Container(
              child: Image.asset('assets/images/logo.jpeg'),
              width: 70,
              height: 60,
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
            DropdownButton(
              value: val,
              items: const [
                DropdownMenuItem(
                  value: 'one',
                  child: Text(
                    'English',
                    style: TextStyle(fontSize: 14, color: Colors.deepPurple),
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
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),
              // ConstrainedBox(
              //   constraints: BoxConstraints(maxWidth: 500),
              SingleChildScrollView(
                child: Card(
                  elevation: 12,
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
                          paddingButtonS: EdgeInsets.fromLTRB(140, 18, 140, 18),
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
                          paddingButtonS: EdgeInsets.fromLTRB(145, 18, 145, 18),
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
                        LoginFieldEmail(),
                        const SizedBox(height: 20),
                        LoginFieldPassword(),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Checkbox(
                              side: BorderSide(
                                color: Colors.grey,
                              ),
                              activeColor: Colors.deepPurple,
                              value: isChecked,
                              onChanged: (value) {
                                setState(() {
                                  isChecked = !isChecked;
                                });
                              },
                            ),
                            const Text('Remember me'),
                            const SizedBox(width: 220),
                            InkWell(
                              child: Text(
                                'Forgot Password?',
                                style: TextStyle(color: Colors.deepPurple),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 25.0),
                        const CustomButton(),
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
