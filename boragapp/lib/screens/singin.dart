import 'package:boragapp/screens/forgot-password.dart';
import 'package:boragapp/screens/home.dart';
import 'package:boragapp/screens/singup.dart';
import 'package:flutter/material.dart';

class SingInScreen extends StatefulWidget {
  @override
  _SingInScreenState createState() => _SingInScreenState();
}

class _SingInScreenState extends State<SingInScreen> {
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
                  height: 200,
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
                    top: 20,
                    child: Center(
                        child: Image.asset(
                      'assets/imgs/logo-white.png',
                      width: 200,
                      height: 200,
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
              'Login',
              style: TextStyle(fontSize: 18),
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
              height: 3,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ForgotPasswordScreen()),
                );
              },
              child: Container(
                  margin: EdgeInsets.only(right: 20),
                  child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(color: Color(0xff333333)),
                      ))),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 30,
              margin: EdgeInsets.only(right: 20, left: 20),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                },
                child: Text('Sing In', style: TextStyle(color: Colors.white)),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Color(0xff5c1c59))),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 30,
                        decoration: BoxDecoration(
                          color: Color(0xff4267B2),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        margin: EdgeInsets.only(right: 20, left: 20),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset(
                                  'assets/imgs/fb.png',
                                  width: 35,
                                  height: 35,
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text('Connect With Facebook',
                                      style: TextStyle(color: Colors.white))
                                ]),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(4),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        margin: EdgeInsets.only(right: 20, left: 20),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset(
                                  'assets/imgs/go.png',
                                  width: 23,
                                  height: 23,
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [Text('Connect With Google')]),
                          ],
                        ),
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
                            Text("Don't have an account?"),
                            SizedBox(width: 3),
                            GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SingUpScreen()),
                                  );
                                },
                                child: Text('Sing Up',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Theme.of(context).accentColor)))
                          ],
                        )),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
