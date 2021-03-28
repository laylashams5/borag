import 'package:boragapp/screens/singin.dart';
import 'package:boragapp/screens/singup.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeeeeee),
      body: Container(
        child: SingleChildScrollView(
            child: Column(children: [
          Stack(
            children: [
              Container(
                height: 400,
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
                  top: 50,
                  child: Center(
                      child: Image.asset(
                    'assets/imgs/logo-white.png',
                    width: 200,
                    height: 200,
                  ))),
              Positioned(
                  top: -20,
                  left: -10,
                  child: RotatedBox(
                      quarterTurns: 1,
                      child: InteractiveViewer(
                        boundaryMargin: EdgeInsets.zero,
                        minScale: 1,
                        maxScale: 1,
                        child: Container(
                          height: 200,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Color(0xffcccccc),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(150.0),
                                bottomRight: Radius.circular(150.0)),
                          ),
                        ),
                      ))),
              Positioned(
                  bottom: 0,
                  right: 0,
                  child: RotatedBox(
                      quarterTurns: -2,
                      child: InteractiveViewer(
                        boundaryMargin: EdgeInsets.zero,
                        minScale: 1,
                        maxScale: 1,
                        child: Container(
                          height: 200,
                          width: 170,
                          decoration: BoxDecoration(
                            color: Color(0xffe2801d),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(150.0),
                                topLeft: Radius.circular(70.0),
                                bottomRight: Radius.circular(150.0)),
                          ),
                        ),
                      ))),
              Positioned(
                  bottom: 0,
                  right: -40,
                  child: Center(
                    child: Image.asset(
                      'assets/imgs/delivery.png',
                      width: 200,
                      height: 200,
                    ),
                  )),
            ],
          ),
        ])),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.65,
                margin: EdgeInsets.only(left: 20),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SingInScreen()),
                    );
                  },
                  child: Text('Login', style: TextStyle(color: Colors.white)),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Color(0xff5c1c59))),
                ),
              ),
              Container(
                  width: MediaQuery.of(context).size.width * 0.15,
                  margin: EdgeInsets.only(right: 20),
                  child: ElevatedButton(
                    onPressed: null,
                    child: Text('En', style: TextStyle(color: Colors.black)),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Color(0xffe2801d))),
                  )),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(right: 20, left: 20),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SingUpScreen()),
                );
              },
              child: Text('Sing Up', style: TextStyle(color: Colors.white)),
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Color(0xff5c1c59))),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
