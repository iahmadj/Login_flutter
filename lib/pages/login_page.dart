import 'package:flutter/material.dart';
import 'package:flutter_myapp/utils/routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Center(
            child: SingleChildScrollView(
          child: Column(children: [
            SizedBox(
              height: 40.0,
            ),
            Image.asset(
              "assets/images/login_image.png",
              fit: BoxFit.cover,
              scale: 2.7,
            ),
            SizedBox(
              height: 5.0,
            ),
            Text("Welcome to Login",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Please Enter Email", labelText: "Email"),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Please Enter Password",
                        labelText: "Password"),
                  ),
                  SizedBox(
                    height: 35.0,
                  ),
                  ElevatedButton(
                      child: Text("Login"),
                      style: TextButton.styleFrom(
                          shadowColor: Colors.black, minimumSize: Size(30, 60)),
                      onPressed: () {
                        Navigator.pushNamed(context, MyRoutes.homeRoute);
                      })
                ],
              ),
            )
          ]),
        )));
  }
}
