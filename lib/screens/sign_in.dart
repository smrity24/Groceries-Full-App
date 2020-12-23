import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class SignIn extends StatelessWidget {
  bool _icon = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Image.asset('assets/images/Mask Group.png'),
          ),
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10),
                    Text(
                      'Get your Groceries \nwith necter',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 20),
                    IntlPhoneField(
                      decoration: InputDecoration(),
                      initialCountryCode: 'BD',
                      onChanged: (phone) {
                        print(phone.completeNumber);
                      },
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Or connect with social media',
                          style: TextStyle(
                            color: Colors.black45,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    SizedBox(
                      height: 45,
                      child: FlatButton(
                          color: Color(0xFF2962FF).withOpacity(0.8),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(13),
                          ),
                          onPressed: () {},
                          child: Row(
                            children: [
                              SizedBox(width: 10),
                              Image.asset(
                                'assets/images/googl.png',
                                height: 20,
                                width: 20,
                              ),
                              SizedBox(width: 40),
                              Text(
                                'Continue with Google',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          )),
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      height: 45,
                      child: FlatButton(
                          color: Color(0xFF5C6BC0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(13),
                          ),
                          onPressed: () {},
                          child: Row(
                            children: [
                              SizedBox(width: 10),
                              Image.asset(
                                'assets/images/fb.png',
                                height: 20,
                                width: 20,
                              ),
                              SizedBox(width: 40),
                              Text(
                                'Continue with Facebook',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          )),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
