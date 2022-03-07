import 'package:flutter/material.dart';
import 'package:flutter_myapp/utils/routes.dart';
import 'package:getwidget/getwidget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Color.fromARGB(255, 255, 255, 255),
        
        child: Center(
            child: SingleChildScrollView(
          child: Column(children: [
            Column(
              children: [
                Image.asset(
                  "assets/images/login_image.png",
                  fit: BoxFit.cover,
                  scale: 5.5,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text("Thali Ghar",
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.green)),
                SizedBox(
                  height: 5.0,
                ),
                Text("Deliver Favourite Food",
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(
              height: 120.0,
            ),
            Text("Login to your Account",
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
                  GFButton(
                    onPressed: () {
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    text: "Login",
                    color: Colors.green,
                    size: GFSize.LARGE,
                    fullWidthButton: true,
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  Text("Or Continue With",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GFIconButton(
                        onPressed: () {},
                        icon: Icon(Icons.facebook),
                        shape: GFIconButtonShape.pills,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      GFIconButton(
                        onPressed: () {},
                        icon: Icon(Icons.whatsapp),
                        color: Color.fromRGBO(52, 183, 0, 1),
                        shape: GFIconButtonShape.pills,
                      ),
                    ],
                  ),
                ],
              ),
            )
          ]),
        )));
  }
}
