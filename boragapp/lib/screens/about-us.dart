import 'package:flutter/material.dart';

class AboutUsScreen extends StatelessWidget {
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
            SizedBox(
              height: 5,
            ),
            Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Text(
                    'Borag is still a start-up company, Despite that it was able to position it self high taking  the lead in the field within a short period of time. and that was accomplished through its exceptional team of various experts specializing in logistical and businesses.',
                    style: TextStyle(
                        fontSize: 16, backgroundColor: Color(0xfffafafa)))),
          ],
        ),
      ),
    );
    ;
  }
}
