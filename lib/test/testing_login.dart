import 'package:flutter/material.dart';

import '../../core/function/functions.dart';

class Login extends StatelessWidget {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool isCheked = false;

  @override
  Widget build(BuildContext context) {
    MediaQuery.of(context).size.width;
    return Scaffold(
      body: Ink(
        width: getSizeApp(context).width,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: Image.asset('assets/images/logo.jpg'),
                  ),
                  Text('MGA Resataux'),
                  InkWell(child: Text('')),
                ],
              ),
              ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 900),
                child: Card(
                  elevation: 20,
                  color: Colors.white,
                  margin: EdgeInsets.all(150),
                  child: Padding(
                    padding: EdgeInsets.all(35),
                    child: Column(children: [
                      const Text('Log in to your account',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 25,
                              color: Colors.black)),
                      const SizedBox(height: 20.0),
                      OutlinedButton(
                        // Icon(Icons.person_pin_circle),
                        child: const Text(
                          'Log in with Google',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black87,
                            fontWeight: FontWeight.w400,
                          ),
                        ),

                        onPressed: () {},
                        style: const ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.white),
                            padding: MaterialStatePropertyAll(
                                EdgeInsets.fromLTRB(160, 17, 160, 17))),
                      ),
                      const SizedBox(height: 20.0),
                      ConstrainedBox(
                        constraints: BoxConstraints(),
                        child: OutlinedButton(
                          // Icon(Icons.person_pin_circle),
                          child: Text(
                            'Log in with Google',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black87,
                              fontWeight: FontWeight.w400,
                            ),
                          ),

                          onPressed: () {},
                          style: const ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.white),
                              padding: MaterialStatePropertyAll(
                                  EdgeInsets.fromLTRB(160, 17, 160, 17))),
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      //  Divider(),
                      Text('or'),
                      const SizedBox(height: 40.0),
                      Container(
                        height: 40,
                        width: 430,
                        child: TextFormField(
                            controller: null,
                            obscureText: false,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  // borderSide: BorderSide(color: Colors.green),
                                  borderRadius: BorderRadius.circular(10)),
                              // contentPadding: const EdgeInsets.only(left: 200, right: 200),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Color.fromARGB(255, 131, 68, 248)),
                                  borderRadius: BorderRadius.circular(10)),
                              hintText: 'E-mail',
                            )),
                      ),
                      SizedBox(height: 20.0),
                      Container(
                        height: 40,
                        width: 430,
                        child: TextFormField(
                            controller: null,
                            obscureText: false,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  // borderSide: BorderSide(color: Colors.green),
                                  borderRadius: BorderRadius.circular(10)),
                              // contentPadding: const EdgeInsets.only(left: 200, right: 200),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Color.fromARGB(255, 131, 68, 248)),
                                  borderRadius: BorderRadius.circular(10)),
                              hintText: 'Password',
                            )),
                      ),
                      SizedBox(height: 20.0),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Checkbox(
                            value: isCheked,
                            onChanged: (newBool) {},
                          ),
                          Text('Remember me'),
                          SizedBox(width: 220),
                          InkWell(
                            child: Text(
                              'Forget Password',
                              style: TextStyle(color: Colors.deepPurple),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20.0),

                      ElevatedButton(
                        style: const ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.deepPurple),
                            padding: MaterialStatePropertyAll(
                                EdgeInsets.fromLTRB(197, 17, 197, 17))),
                        onPressed: () {},
                        child: const Text('Login',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            )),
                      ),
                    ]),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
