import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUsScreen extends StatefulWidget {
  @override
  _ContactUsScreenState createState() => _ContactUsScreenState();
}

class _ContactUsScreenState extends State<ContactUsScreen> {
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
              'Contact Us',
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
              height: 5,
            ),
            Container(
              margin: EdgeInsets.only(right: 20, left: 20),
              child: TextField(
                maxLines: 3,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(hintText: 'Message'),
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
                onPressed: null,
                child: Text('Send', style: TextStyle(color: Colors.white)),
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
                    Text("Call Us"),
                    SizedBox(width: 3),
                    GestureDetector(
                        onTap: () {
                          launch("tel://249926330445");
                        },
                        child: Text('+249926330445',
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
