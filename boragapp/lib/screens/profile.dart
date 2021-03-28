import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: SingleChildScrollView(
            child: Column(children: [
      SizedBox(
        height: 10,
      ),
      Text(
        'Profile',
        style: TextStyle(fontSize: 18),
      ),
      SizedBox(
        height: 5,
      ),
      GestureDetector(
          onTap: () {},
          child: ClipRRect(
            borderRadius: BorderRadius.circular(90),
            child: CachedNetworkImage(
              width: 100,
              height: 100,
              imageUrl: 'assets/imgs/delivery.png',
              placeholder: (context, url) =>
                  Icon(Icons.person_pin, size: 100, color: Colors.white),
            ),
          )),
      SizedBox(
        height: 5,
      ),
      Container(
        margin: EdgeInsets.only(right: 20, left: 20),
        child: TextField(
          keyboardType: TextInputType.name,
          decoration: InputDecoration(hintText: 'Ghazi Ebnof'),
        ),
      ),
      SizedBox(
        height: 5,
      ),
      Container(
        margin: EdgeInsets.only(right: 20, left: 20),
        child: TextField(
          decoration: InputDecoration(hintText: 'Ghazi@gmail.com'),
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Container(
        margin: EdgeInsets.only(right: 20, left: 20),
        child: TextField(
          obscureText: true,
          decoration: InputDecoration(hintText: '......'),
        ),
      ),
      SizedBox(
        height: 5,
      ),
      Container(
        margin: EdgeInsets.only(right: 20, left: 20),
        child: TextField(
          keyboardType: TextInputType.streetAddress,
          decoration: InputDecoration(hintText: 'Bahri'),
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
          child: Text('Update Profile', style: TextStyle(color: Colors.white)),
          style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(Color(0xff5c1c59))),
        ),
      ),
      SizedBox(
        height: 10,
      )
    ])));
  }
}
