// ignore_for_file: prefer_const_constructors

import 'package:authentication_fiirebase/utils/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import 'otp_screen.dart';

class LoginWithPhone extends StatefulWidget {
  @override
  _LoginWithPhoneState createState() => _LoginWithPhoneState();
}

class _LoginWithPhoneState extends State<LoginWithPhone> {
  TextEditingController _controller = TextEditingController();

  bool showSpinner = false;
  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: showSpinner,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Phone Auth'),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(children: [
              Container(
                margin: EdgeInsets.only(top: 60),
                child: Center(
                  child: Text(
                    'Phone Authentication',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 40, right: 10, left: 10),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Phone Number',
                    prefix: Padding(
                      padding: EdgeInsets.all(4),
                      child: Text('+92'),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.green
                      ),
                    ),
                  ),
                  maxLength: 10,
                  keyboardType: TextInputType.number,
                  controller: _controller,
                ),
              )
            ]),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: RoundedButton(title: "Next", onPress: (){
                showSpinner = true;
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => OTPScreen(_controller.text)));
                showSpinner = false;
                setState(() {
                });
              }),
            ),
          ],
        ),
      ),
    );
  }
}