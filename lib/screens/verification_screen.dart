import 'package:flutter/material.dart';
import 'package:groceries_app/screens/select_location.dart';

class VerificationScreen extends StatefulWidget {
  @override
  _VerificationScreenState createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: Colors.black),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Text(
                'Enter your 4-digit code',
                style: TextStyle(fontSize: 20),
              ),
              VerificationCodeForm(),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Resend Code',
                    style: TextStyle(
                      color: Color(0xFF81C784),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SelectLocation()));
                    },
                    borderRadius: BorderRadius.circular(33),
                    child: Image.asset(
                      'assets/images/forward.png',
                      height: 50,
                      width: 50,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}

class VerificationCodeForm extends StatefulWidget {
  @override
  _VerificationCodeFormState createState() => _VerificationCodeFormState();
}

class _VerificationCodeFormState extends State<VerificationCodeForm> {
  FocusNode point2FocusNode;
  FocusNode point3FocusNode;
  FocusNode point4FocusNode;

  @override
  void initState() {
    super.initState();
    point2FocusNode = FocusNode();
    point3FocusNode = FocusNode();
    point4FocusNode = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    point2FocusNode.dispose();
    point3FocusNode.dispose();
    point4FocusNode.dispose();
  }

  void nextField({String value, FocusNode focusNode}) {
    if (value.length == 1) {
      focusNode.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 60,
            child: TextFormField(
              autofocus: true,
              textAlign: TextAlign.center,
              obscureText: true,
              style: TextStyle(fontSize: 20),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                nextField(value: value, focusNode: point2FocusNode);
              },
            ),
          ),
          SizedBox(
            width: 60,
            child: TextFormField(
              focusNode: point2FocusNode,
              autofocus: true,
              textAlign: TextAlign.center,
              obscureText: true,
              style: TextStyle(fontSize: 20),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                nextField(value: value, focusNode: point3FocusNode);
              },
            ),
          ),
          SizedBox(
            width: 60,
            child: TextFormField(
              focusNode: point3FocusNode,
              autofocus: true,
              textAlign: TextAlign.center,
              obscureText: true,
              style: TextStyle(fontSize: 20),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                nextField(value: value, focusNode: point4FocusNode);
              },
            ),
          ),
          SizedBox(
            width: 60,
            child: TextFormField(
              focusNode: point4FocusNode,
              autofocus: true,
              textAlign: TextAlign.center,
              obscureText: true,
              style: TextStyle(fontSize: 20),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                point4FocusNode.unfocus();
              },
            ),
          ),
        ],
      ),
    );
  }
}
