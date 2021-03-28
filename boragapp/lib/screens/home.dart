import 'package:boragapp/screens/map.dart';
import 'package:boragapp/screens/menu.dart';
import 'package:boragapp/screens/orders.dart';
import 'package:boragapp/screens/profile.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int tabIndex = 0;
  List<Widget> listScreens;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    listScreens = [
      MapScreen(),
      OrdersScreen(),
      ProfileScreen(),
    ];
  }

  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        backgroundColor: Color(0xffeeeeee),
        body: SingleChildScrollView(
          child: Column(children: [
            Stack(children: [
              Container(
                height: 80,
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
                  bottom: 0,
                  child: Center(
                      child: Image.asset(
                    'assets/imgs/logo-white1.png',
                    width: 250,
                    height: 250,
                  ))),
              Positioned(
                  top: 20,
                  left: 20,
                  child: RotatedBox(
                      quarterTurns: 1,
                      child: InteractiveViewer(
                        boundaryMargin: EdgeInsets.zero,
                        minScale: 1,
                        maxScale: 1,
                        child: GestureDetector(
                          onTap: () {
                            _scaffoldKey.currentState.openDrawer();
                          },
                          child: Icon(Icons.more_horiz_outlined,
                              color: Color(0xffeeeeee)),
                        ),
                      ))),
            ]),
            listScreens[tabIndex],
          ]),
        ),
        drawer: Container(
          width: 250,
          child: MenuScreen(),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: Color(0xffffffff),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(50.0),
              topLeft: Radius.circular(50.0),
            ),
          ),
          child: BottomNavigationBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              type: BottomNavigationBarType.fixed,
              currentIndex: tabIndex,
              onTap: (int index) {
                setState(() {
                  tabIndex = index;
                });
              },
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.list),
                  label: 'Orders',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: 'Profile',
                ),
              ]),
        ));
  }
}
