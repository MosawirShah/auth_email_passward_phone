import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text("Home Screen"),
      ),
      body: Center(
        child: Text("Wellcome to Home Screen", style: TextStyle(fontSize: 22),),
      ),
    );
  }
}
