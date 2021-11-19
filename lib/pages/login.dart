import 'package:flutter/material.dart';
import 'package:hackathon/pages/home_page.dart';
import 'package:hackathon/pages/signup.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    String v = '12345';
    String val;
    GlobalKey<FormState> formKey = GlobalKey<FormState>();

    return Form(
        autovalidateMode: AutovalidateMode.always,
        key: formKey,
        child: Scaffold(
          backgroundColor: Colors.white,
          resizeToAvoidBottomInset: false,
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    padding:
                        const EdgeInsets.only(top: 20, left: 20, right: 20),
                    child: Image.asset(
                      "assets/gif.gif",
                      fit: BoxFit.contain,
                    )),
                Stack(
                  children: [
                    Container(
                      padding:
                          const EdgeInsets.only(top: 75, left: 20, right: 20),
                      child: Column(
                        children: <Widget>[
                          TextFormField(
                              style: const TextStyle(color: Colors.black),
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  hintText: 'abd@gmail.com',
                                  hintStyle: TextStyle(color: Colors.black),
                                  labelText: 'Email',
                                  prefixIcon: Icon(
                                    Icons.email,
                                    color: Colors.green,
                                    size: 25,
                                  ),
                                  labelStyle: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide: BorderSide(
                                        color: Colors.green,
                                      )))),
                          const SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            style: const TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                labelText: 'Password',
                                prefixIcon: Icon(
                                  Icons.lock,
                                  color: Colors.green,
                                  size: 25,
                                ),
                                labelStyle: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: BorderSide(
                                      color: Colors.green,
                                    ))),
                            onChanged: (value) {
                              val = value;
                            },
                            obscureText: true,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Container(
                              alignment: const Alignment(1, 0),
                              padding: const EdgeInsets.only(top: 15, left: 20),
                              child: InkWell(
                                onTap: () {},
                                child: const Text(
                                  'Forgot Password',
                                  style: TextStyle(
                                    color: Colors.green,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              )),
                          const SizedBox(
                            height: 40,
                          ),
                          Material(
                            borderRadius: BorderRadius.circular(20),
                            shadowColor: Colors.greenAccent,
                            color: Colors.green,
                            elevation: 7.0,
                            child: SizedBox(
                              height: 40,
                              child: TextButton(
                                onPressed: () {
                                  if (val == v) {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (_) => HomePage()));
                                  } else
                                    showDialog(
                                        context: context,
                                        builder: (_) => AlertDialog(
                                              title: Text('Alert Dialogue'),
                                              content: Text('Wrong Password'),
                                            ));
                                },
                                child: const Center(
                                  child: Text(
                                    'Login',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Material(
                            borderRadius: BorderRadius.circular(20),
                            shadowColor: Colors.greenAccent,
                            color: Colors.green,
                            elevation: 7.0,
                            child: SizedBox(
                              height: 40,
                              child: TextButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (_) => SignUp(),
                                  ));
                                },
                                child: const Center(
                                  child: Text(
                                    'Sign Up',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
