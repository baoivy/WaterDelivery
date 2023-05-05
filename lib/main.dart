import 'package:flutter/material.dart';
import 'package:waterdelivery/SignUp.dart';
import 'package:waterdelivery/SignIn.dart';

void main(){
    runApp(
      Application()
    );
}

class Application extends StatelessWidget {
    @override
    Widget build(BuildContext context){
        return MaterialApp(home: MainPage(),);
    }
}

class MainPage extends StatefulWidget {
    @override
    Main createState() => Main();
}

class Main extends State<MainPage>{
    bool showPass = true;
    @override
    Widget build(BuildContext context){
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
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 50),
                              child: Text(
                              "Water delivery",
                              style: TextStyle (
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                    fontSize: 32
                              ),
                            ),
                          ),   
                          Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                              child: Text(
                              "We deliver water at any point of the earth in 30 mins",
                              style: TextStyle (
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                    fontSize: 18
                              ),
                            ),
                          ),    
                          Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
                              child : SizedBox(
                                  width: double.infinity,
                                  height:50,
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.blue,
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(7)))
                                      ),
                                      onPressed: onSignInPage,
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
                          Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
                              child : SizedBox(
                                  width: double.infinity,
                                  height:50,
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.blue,
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(7)))
                                      ),
                                      onPressed: onSignUpPage,
                                      child: const Text(
                                          "Sign up",
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
    void onSignInPage(){
        Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
    }
    void onSignUpPage(){
        Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPage())); //Lambda function
    }
}

