import 'dart:ui';

import 'package:elearning_app/Views/Widgets/container.dart';

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  bool _obscureText = true;
  bool ischeck = false;
  bool _autoValidate = false;
  TextEditingController _email = TextEditingController();
  TextEditingController _pass = TextEditingController();

  final TextStyle style =
      TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600);

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  void _onsubmit() {
    if (_globalKey.currentState.validate()) {
//    If all data are correct then save data to out variables
      _globalKey.currentState.save();
    } else {
//    If all data are not valid then start auto validation.
      setState(() {
        _autoValidate = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Stack(
            children: [
              CustomContainer(),
              Container(
                color: Colors.black38,
              ),
              Positioned(
                top: 350,
                right: 50,
                left: 50,
                child: Container(
                  child: Form(
                      key: _globalKey,
                      autovalidate: _autoValidate,
                      child: Column(
                        children: [
                          TextFormField(
                            style: style,
                            controller: _email,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.email,
                                  color: Colors.white70,
                                  size: 30,
                                ),
                                labelText: "Enter email..",
                                labelStyle: TextStyle(
                                  color: Colors.white38,
                                  fontSize: 20,
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: BorderSide(
                                      color: Colors.white,
                                    ))),
                            validator: (value) {
                              if (value.isEmpty ||
                                  !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                      .hasMatch(value)) {
                                return 'Enter a valid email!';
                              }
                              return null;
                            },
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            controller: _pass,
                            obscureText: _obscureText,
                            showCursor: true,
                            style: style,
                            keyboardType: TextInputType.visiblePassword,
                            decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.lock,
                                  color: Colors.white70,
                                  size: 30,
                                ),
                                labelText: "Enter password..",
                                labelStyle: TextStyle(
                                    color: Colors.white38, fontSize: 20),
                                suffixIcon: Icon(
                                  Icons.remove_red_eye,
                                  color: Colors.white70,
                                  size: 30,
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: BorderSide(
                                      color: Colors.white,
                                    ))),
                            validator: (value) {
                              if (value.isEmpty || value.length < 6) {
                                return 'Password must contains atleast 6 characters';
                              }
                              return null;
                            },
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 120),
                            child: Text(
                              "Forget Password?".toUpperCase(),
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                  color: Colors.teal.shade600,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          Row(
                            children: [
                              Checkbox(
                                  checkColor: Colors.white,
                                  value: this.ischeck,
                                  onChanged: (bool value) {
                                    setState(() {
                                      this.ischeck = value;
                                    });
                                  }),
                              Text(
                                "Remember me or keep me logged in",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          FlatButton(
                            onPressed: () {
                              _onsubmit();
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => QRViewExample()));
                            },
                            child: Container(
                              height: 60,
                              width: double.infinity,
                              child: Center(
                                child: Text(
                                  "Login".toUpperCase(),
                                  style: TextStyle(
                                      color: Colors.white70,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 30),
                                ),
                              ),
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [
                                      Colors.teal,
                                      Colors.amber.shade600
                                    ]),
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
