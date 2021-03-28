import 'package:boragapp/helper/models.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class OrdersScreen extends StatelessWidget {
  List ordersItems = [
    OrdersItems(
        id: 1,
        location: 'Khartoum-Omdurman',
        driverName: 'Omer',
        price: 500,
        time: DateTime.now()),
    OrdersItems(
        id: 2,
        location: 'Omdurman-Bahri',
        driverName: 'Ali',
        price: 500,
        time: DateTime.now()),
    OrdersItems(
        id: 3,
        location: 'Khartoum-Bahri',
        driverName: 'Osman',
        price: 500,
        time: DateTime.now()),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
          child: Column(
        children: [
          Text(
            'Orders',
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(
            height: 5,
          ),
          ListView.builder(
              itemCount: ordersItems.length,
              // ignore: missing_return
              itemBuilder: (BuildContext ctx, int index) {
                return Container(child: Text(ordersItems[index]));
              })
        ],
      )),
    );
  }
}
