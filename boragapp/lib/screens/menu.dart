import 'package:boragapp/screens/about-us.dart';
import 'package:boragapp/screens/contact-us.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class MenuScreen extends StatefulWidget {
  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: Scaffold(
        backgroundColor: Color(0xffeeeeee),
        body: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(top: 15),
              child: GestureDetector(
                  onTap: () {},
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(90),
                    child: CachedNetworkImage(
                      width: 100,
                      height: 100,
                      imageUrl: 'assets/imgs/delivery.png',
                      placeholder: (context, url) => Icon(Icons.person_pin,
                          size: 100, color: Colors.white),
                    ),
                  )),
            ),
            Text(
              'Ghazi Ebnof',
              style: TextStyle(
                color: Color(0xff333333),
                fontSize: 18,
              ),
              textAlign: TextAlign.center,
            ),
            Container(
              padding: EdgeInsets.only(right: 20, left: 20),
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: Color(0xff999999), width: 1))),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.only(right: 20, left: 20),
              child: ListTile(
                leading: Icon(
                  Icons.people_alt_outlined,
                  color: Color(0xff999999),
                ),
                title: Text(
                  'About Us',
                  style: TextStyle(
                    color: Color(0xff333333),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AboutUsScreen()),
                  );
                },
              ),
            ),
            Container(
              padding: EdgeInsets.only(right: 20, left: 20),
              child: ListTile(
                leading: Icon(
                  Icons.contact_mail_outlined,
                  color: Color(0xff999999),
                ),
                title: Text(
                  'Contact Us',
                  style: TextStyle(
                    color: Color(0xff333333),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ContactUsScreen()),
                  );
                },
              ),
            ),
            Container(
              padding: EdgeInsets.only(right: 20, left: 20),
              child: ListTile(
                leading: Icon(
                  Icons.logout,
                  color: Colors.red,
                ),
                title: Text(
                  'Logout',
                  style: TextStyle(
                    color: Color(0xff333333),
                  ),
                ),
                onTap: () {},
              ),
            ),
          ],
        ),
        // bottomNavigationBar: Container(
        //   padding: EdgeInsets.only(right: 20, left: 20),
        //   child: Text('Developed By Hash Code'),
        // ),
      ),
    );
  }
}
