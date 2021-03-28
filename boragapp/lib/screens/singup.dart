import 'dart:io';
import 'package:boragapp/screens/singin.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Gender {
  static const male = 1;
  static const female = 2;
}

class SingUpScreen extends StatefulWidget {
  @override
  _SingUpScreenState createState() => _SingUpScreenState();
}

class _SingUpScreenState extends State<SingUpScreen> {
  File memberImage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeeeeee),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 150,
                  decoration: BoxDecoration(
                    color: Color(0xff5c1c59),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50.0),
                        bottomRight: Radius.circular(50.0)),
                  ),
                ),
                Positioned(
                    left: 50,
                    right: 50,
                    top: 0,
                    child: Center(
                        child: Image.asset(
                      'assets/imgs/logo-white.png',
                      width: 180,
                      height: 180,
                    ))),
                Positioned(
                    top: 20,
                    left: 20,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_back_ios_outlined,
                          color: Colors.white),
                    )),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Register',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              margin: EdgeInsets.only(right: 20, left: 20),
              child: TextField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(hintText: 'Fullname'),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              margin: EdgeInsets.only(right: 20, left: 20),
              child: TextField(
                decoration: InputDecoration(hintText: 'Email Or Mobile'),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(right: 20, left: 20),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(hintText: 'Password'),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(right: 20, left: 20),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(hintText: 'Confirm Password'),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              margin: EdgeInsets.only(right: 20, left: 20),
              child: TextField(
                keyboardType: TextInputType.streetAddress,
                decoration: InputDecoration(hintText: 'Address'),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
                margin: EdgeInsets.only(
                  top: 10,
                  right: 20,
                  left: 20,
                ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(children: [
                        Text('Gender',
                            style: TextStyle(
                                color: Color(0xff676767), fontSize: 16)),
                      ]),
                      Row(children: [
                        Radio(
                            value: Gender.male,
                            groupValue: 0,
                            onChanged: (int value) {
                              setState(() {});
                            }),
                        Text('Male',
                            style: TextStyle(
                                color: Color(0xff676767), fontSize: 16)),
                        Radio(
                          value: Gender.female,
                          groupValue: 1,
                          onChanged: (int value) {
                            setState(() {});
                          },
                        ),
                        Text('Female',
                            style: TextStyle(
                                color: Color(0xff676767), fontSize: 16)),
                      ])
                    ])),
            Container(
              margin: EdgeInsets.only(right: 20, left: 20, top: 10),
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: Color(0xff939393), width: 1))),
            ),
            SizedBox(height: 5),
            Container(
              margin: EdgeInsets.only(
                right: 20,
                left: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Profile Photo',
                      style: TextStyle(color: Color(0xff676767), fontSize: 16)),
                  OutlinedButton(
                    onPressed: () async {
                      var image = await ImagePicker()
                          .getImage(source: ImageSource.gallery);

                      if (image == null) return;
                      if (!mounted) return;
                      setState(() {
                        // memberImage = File(image.path);
                      });
                    },
                    child: Text(
                      'Choose',
                      style: TextStyle(color: Color(0xff676767), fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 20, left: 20, top: 10),
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: Color(0xff939393), width: 1))),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 30,
              margin: EdgeInsets.only(right: 20, left: 20),
              child: ElevatedButton(
                onPressed: null,
                child: Text('Sing Up', style: TextStyle(color: Colors.white)),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Color(0xff5c1c59))),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                margin: EdgeInsets.only(right: 20, left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("I have an account?"),
                    SizedBox(width: 3),
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SingInScreen()),
                          );
                        },
                        child: Text('Sing In',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Theme.of(context).accentColor)))
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
