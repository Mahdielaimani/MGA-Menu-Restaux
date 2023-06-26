part of 'packages_screens.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    bool? isCheked = true;

    MediaQuery.of(context).size.width;
    String val = 'one';
    return Scaffold(
      body: Ink(
        width: getSizeApp(context).width,
        height: getSizeApp(context).height,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(children: [
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  alignment: Alignment.center,
                  // child: Image.asset('assets/images/logo.jpg'),
                ),
                const Text(
                  'MGA Restaux',
                  style: TextStyle(fontSize: 17, color: Colors.red),
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
                            style: TextStyle(fontSize: 17, color: Colors.blue),
                          )),
                      DropdownMenuItem(value: 'two', child: Text('عربي ')),
                      DropdownMenuItem(value: 'threeo', child: Text('Deutsch'))
                    ],
                    onChanged: (String? newVal) {
                      setState() {
                        val = newVal!;
                      }
                    })
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 520),
                child: Card(
                  elevation: 20,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'Log in to your account',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 25,
                        ),
                      ),
                      const SizedBox(height: 50),
                      SocialButton(
                        iconSocial: const Icon(
                          FontAwesomeIcons.google,
                          color: Colors.black,
                          size: 15,
                        ),
                        labelSocial: const Text(
                          'Log in with Google',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black87,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      SocialButton(
                        iconSocial: const Icon(
                          FontAwesomeIcons.apple,
                          color: Colors.black,
                          size: 16,
                        ),
                        labelSocial: const Text(
                          'Log in with Apple',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black87,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      const Divider(
                        indent: 40,
                        endIndent: 40,
                      ),
                      const Text(
                        'or',
                        style: TextStyle(
                          fontSize: 17,
                        ),
                      ),
                      // Divider(
                      //   indent: 270,
                      // ),
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
                            value: isCheked,
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
                      CustomBotton(),
                      const SizedBox(height: 20.0),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40.0),
            const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              InkWell(
                child: Text(
                  'Terms of Servic',
                  style: TextStyle(fontSize: 12, color: Colors.deepPurple),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              VerticalDivider(),
              InkWell(
                child: Text(
                  'Privacy Policy',
                  style: TextStyle(fontSize: 12, color: Colors.deepPurple),
                ),
              ),
            ]),
          ]),
        ),
      ),
    );
  }
}
