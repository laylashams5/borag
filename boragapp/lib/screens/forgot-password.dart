import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatefulWidget {
  @override
  _ForgotPasswordScreenState createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  bool _isShow = true;
  bool _isShowStep3 = true;
  void showVisible() {
    setState(() {
      _isShow = !_isShow;
    });
  }

  void showStep3() {
    setState(() {
      _isShowStep3 = !_isShowStep3;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffeeeeee),
        body: SingleChildScrollView(
            child: Column(children: [
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
            'Forgot Password',
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(
            height: 5,
          ),
          //Setp 1
          Visibility(
              visible: _isShow,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 20, left: 20),
                    child: TextField(
                      decoration: InputDecoration(hintText: 'Email Or Mobile'),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 30,
                    margin: EdgeInsets.only(right: 20, left: 20),
                    child: ElevatedButton(
                      onPressed: showVisible,
                      child: Text('Continue',
                          style: TextStyle(color: Colors.white)),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color(0xff5c1c59))),
                    ),
                  ),
                ],
              ),
              //Setp2
              replacement: Visibility(
                visible: _isShowStep3,
                child: Column(
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 20, left: 20),
                      child: TextField(
                        decoration: InputDecoration(hintText: 'Enter Code'),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 30,
                      margin: EdgeInsets.only(right: 20, left: 20),
                      child: ElevatedButton(
                        onPressed: showStep3,
                        child:
                            Text('Next', style: TextStyle(color: Colors.white)),
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Color(0xff5c1c59))),
                      ),
                    ),
                  ],
                ),
                //Step 3
                replacement: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 20, left: 20),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(hintText: 'New Password'),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 20, left: 20),
                      child: TextField(
                        obscureText: true,
                        decoration:
                            InputDecoration(hintText: 'Confirm New Password'),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 30,
                      margin: EdgeInsets.only(right: 20, left: 20),
                      child: ElevatedButton(
                        onPressed: showVisible,
                        child: Text('Change Password',
                            style: TextStyle(color: Colors.white)),
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Color(0xff5c1c59))),
                      ),
                    ),
                  ],
                ),
              )),
        ])));
  }
}
