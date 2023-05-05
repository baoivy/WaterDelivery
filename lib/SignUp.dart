import 'package:flutter/material.dart';
import 'package:waterdelivery/SignIn.dart';

class SignUpPage extends StatefulWidget {
    @override
    SignUp createState() => SignUp();
}

class SignUp extends State<SignUpPage> {
    bool showPass = true;
    @override
    Widget build(BuildContext context) {
           return Scaffold(
                body: Container (
                  padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                    constraints: BoxConstraints.expand(),
                    color: Colors.white,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
                              child: Text(
                              "Create \nAccount",
                              style: TextStyle (
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                    fontSize: 31
                              ),
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                              child: TextField(
                                style: TextStyle(fontSize: 18, color: Colors.black),
                                decoration: InputDecoration (
                                  labelText: "Username",
                                  labelStyle: TextStyle(color: Colors.grey, fontSize: 15),
                                ),
                              )
                          ),
                          Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                              child: TextField(
                                style: TextStyle(fontSize: 18, color: Colors.black),
                                decoration: InputDecoration (
                                  labelText: "Email",
                                  labelStyle: TextStyle(color: Colors.grey, fontSize: 15),
                                ),
                              )
                          ),
                          Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                              child: Stack(
                                  alignment: AlignmentDirectional.centerEnd,
                                  children: <Widget>[
                                    TextField(
                                        style: TextStyle(fontSize: 18, color: Colors.black),
                                        obscureText: showPass,
                                        decoration: InputDecoration (
                                            labelText: "Password",
                                            labelStyle: TextStyle(color: Colors.grey, fontSize: 15),
                                        ),
                                    ),
                                    GestureDetector(
                                      onTap: showPassword,
                                      child : Text(
                                        showPass ? "Show" : "Hide",
                                        style: TextStyle (
                                            fontWeight: FontWeight.bold,
                                            color: Colors.blue,
                                            fontSize: 13
                                        ),
                                      )
                                    )
                                  ],
                              ),
                          ),
                          Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                              child : SizedBox(
                                  width: double.infinity,
                                  height:50,
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.blue,
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(7)))
                                      ),
                                      onPressed: onCreateAccount,
                                      child: const Text(
                                          "Create Account",
                                          style: TextStyle(
                                            color: Colors.white, 
                                            fontSize: 16
                                          ),
                                      ),
                                  )
                              )
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
                            child : Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    "Or if you have account",
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 14
                                    ),
                                  ),
                                ],
                            )
                          ),
                          Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                              child : SizedBox(
                                  width: double.infinity,
                                  height:50,
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.blue,
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(7)))
                                      ),
                                      onPressed: onLoginPage,
                                      child: const Text(
                                          "Sign in",
                                          style: TextStyle(
                                            color: Colors.white, 
                                            fontSize: 16
                                          ),
                                      ),
                                  )
                              )
                          ),
                        ],
                    ),
                ),
            );
    }
    void showPassword() {
      setState(() {
          showPass = (showPass == true) ? false : true;
      });
    }
    void onCreateAccount() {}
    void onLoginPage() {
        Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
    }
}