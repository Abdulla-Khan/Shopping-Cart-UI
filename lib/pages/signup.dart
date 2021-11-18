import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:hackathon/pages/login.dart';

import 'home_page.dart';

class SignUp extends StatefulWidget {
  const SignUp({
    Key key,
  }) : super(key: key);
  @override
  State<SignUp> createState() => SignState();
}

class SignState extends State<SignUp> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String v = "";
  String val;
  @override
  Widget build(BuildContext context) {
    return Form(
        autovalidateMode: AutovalidateMode.always,
        key: formKey,
        child: Scaffold(
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                  Stack(
                    children: [
                      Container(
                          padding: const EdgeInsets.fromLTRB(10.0, 90, 00, 0),
                          child: const Text(
                            "SignUp",
                            style: TextStyle(
                                fontSize: 40.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          )),
                      Container(
                        padding: const EdgeInsets.fromLTRB(135, 55, 00, 0),
                        child: const Text(
                          ".",
                          style: TextStyle(
                              fontSize: 80.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.green),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 150, left: 20),
                        child: Column(
                          children: [
                            TextFormField(
                              style: const TextStyle(color: Colors.black),
                              decoration: const InputDecoration(
                                  labelText: 'Name',
                                  prefixIcon: Icon(
                                    Icons.person,
                                    color: Colors.green,
                                    size: 25,
                                  ),
                                  labelStyle: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                    color: Colors.green,
                                  ))),
                              validator:
                                  RequiredValidator(errorText: 'Required *'),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                                style: const TextStyle(color: Colors.black),
                                decoration: const InputDecoration(
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
                                    focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                      color: Colors.green,
                                    ))),
                                validator: MultiValidator([
                                  RequiredValidator(errorText: "Required *"),
                                  EmailValidator(
                                      errorText: "Not a valid Email"),
                                ])),
                            const SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              style: const TextStyle(color: Colors.black),
                              decoration: const InputDecoration(
                                  labelText: 'Number',
                                  prefixIcon: Icon(
                                    Icons.phone,
                                    color: Colors.green,
                                    size: 25,
                                  ),
                                  labelStyle: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                    color: Colors.green,
                                  ))),
                              validator:
                                  RequiredValidator(errorText: 'Required *'),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                                style: const TextStyle(color: Colors.black),
                                decoration: const InputDecoration(
                                    labelText: 'Password',
                                    prefixIcon: Icon(
                                      Icons.lock_outline,
                                      color: Colors.green,
                                      size: 25,
                                    ),
                                    labelStyle: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey,
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                      color: Colors.green,
                                    ))),
                                onChanged: (value) {
                                  val = value;
                                },
                                obscureText: true,
                                validator: MultiValidator([
                                  RequiredValidator(errorText: 'Required *'),
                                  MinLengthValidator(6,
                                      errorText: "At least 6 characters")
                                ])),
                            const SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              style: const TextStyle(color: Colors.black),
                              decoration: const InputDecoration(
                                  labelText: 'Confirm Password',
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
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                    color: Colors.green,
                                  ))),
                              obscureText: true,
                              validator:
                                  RequiredValidator(errorText: 'Required *'),
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
                                    if (formKey.currentState.validate()) {}
                                    if (val == v) {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                        builder: (_) => HomePage(),
                                      ));
                                    } else
                                      showDialog(
                                          context: context,
                                          builder: (_) => AlertDialog(
                                                title: Text('Alert Dialogue'),
                                                content: Text('Wrong PassWord'),
                                              ));
                                  },
                                  child: const Center(
                                    child: Text(
                                      'Create Account',
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
                              height: 20,
                            ),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    "Have an account?",
                                    style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: Colors.green,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5.0,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (_) => LoginPage()));
                                    },
                                    child: const Text(
                                      'Login',
                                      style: TextStyle(
                                        color: Colors.green,
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        decoration: TextDecoration.underline,
                                      ),
                                    ),
                                  )
                                ]),
                            const SizedBox(
                              height: 40,
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ]))));
  }
}
