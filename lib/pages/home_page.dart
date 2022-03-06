import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int myapp = 2;
    String app = "First App";

    return Scaffold(
      appBar: AppBar(
        title: Text("My First App"),
        shadowColor: Colors.grey,
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to $myapp $app"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
