import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookingHistory extends StatefulWidget {
  const BookingHistory({Key? key}) : super(key: key);

  @override
  State<BookingHistory> createState() => _BookingHistoryState();
}

class _BookingHistoryState extends State<BookingHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [IconButton(onPressed: (){Navigator.of(context)
          .pushNamed('/');
      }, icon: Icon(Icons.logout))]),
      body: Center(child: Text('Booking History'),),
    );
  }
}
