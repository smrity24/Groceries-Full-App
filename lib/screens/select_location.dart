import 'package:dropdown_formfield/dropdown_formfield.dart';
import 'package:flutter/material.dart';

class SelectLocation extends StatefulWidget {
  @override
  _SelectLocationState createState() => _SelectLocationState();
}

class _SelectLocationState extends State<SelectLocation> {
  String _myList1;
  String _myList2;
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/location.png',
              height: 120,
              width: 120,
            ),
            SizedBox(height: 10),
            Text(
              ' Select Your Location',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Switch on your location to stay in tune with what's happening in your area",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black45,
                fontSize: 11,
              ),
            ),
            SizedBox(height: 30),
            DropDownFormField(
              hintText: 'Types of your zone',
              titleText: 'Your zone',
              textField: 'display',
              valueField: 'value',
              value: _myList1,
              onSaved: (value) {
                setState(() {
                  _myList1 = value;
                });
              },
              onChanged: (value) {
                setState(() {
                  _myList1 = value;
                });
              },
              dataSource: [
                {
                  "display": "Dhaka",
                  "value": "Dhaka",
                },
                {
                  "display": "Khulna",
                  "value": "Khulna",
                },
                {
                  "display": "Banarsee",
                  "value": "Banarsee",
                },
                {
                  "display": "Chittagong",
                  "value": "Chittagong",
                },
                {
                  "display": "Rajshahi",
                  "value": "Rajshahi",
                },
                {
                  "display": "Sylhet",
                  "value": "Sylhet",
                },
                {
                  "display": "Rongpur",
                  "value": "Rongpur",
                },
              ],
            ),
            SizedBox(height: 20),
            DropDownFormField(
              hintText: 'Types of your area',
              titleText: 'Your area',
              textField: 'display',
              valueField: 'value',
              value: _myList2,
              onSaved: (value) {
                setState(() {
                  _myList2 = value;
                });
              },
              onChanged: (value) {
                setState(() {
                  _myList2 = value;
                });
              },
              dataSource: [
                {
                  "display": "Uttara",
                  "value": "Uttara",
                },
                {
                  "display": "Mirpur",
                  "value": "Mirpur",
                },
                {
                  "display": "Dhanmondi",
                  "value": "Dhanmondi",
                },
                {
                  "display": "Gulshan",
                  "value": "Gulshan",
                },
                {
                  "display": "Banani",
                  "value": "Banani",
                },
                {
                  "display": "Kurmitula",
                  "value": "Kurmitula",
                },
                {
                  "display": "Farmgate",
                  "value": "Farmgate",
                },
              ],
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: FlatButton(
                color: Color(0xFF81C784),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(13),
                ),
                onPressed: () {},
                child: Text(
                  'Submit',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
