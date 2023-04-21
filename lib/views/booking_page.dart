import 'package:booking_app/views/Booking/bloc/booking_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../presentation/components/loader.dart';
import '../presentation/components/spacers.dart';

class BookingScreen extends StatelessWidget {

   BookingScreen({Key? key}) : super(key: key);

   final TextEditingController _username=TextEditingController();
   final TextEditingController _name=TextEditingController();
   final TextEditingController _hotelId=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(title: const Text(' Book Hotels Here!'),
         actions: [IconButton(onPressed: (){Navigator.of(context)
         .pushNamed('/');
          }, icon: const Icon(Icons.logout))
    ]
        ),

   body: Center(child: Text('on My Bookings'),)

    );}
}
