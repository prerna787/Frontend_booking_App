import 'package:booking_app/views/Booking/bloc/booking_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../presentation/components/loader.dart';
import '../presentation/components/spacers.dart';
import 'dashboard_screen.dart';

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

   body: Center(child: AlertDialog(
     title: Text('Booking Status'),           // To display the title it is optional
     content: Text('Successful !!!'),   // Message which will be pop up on the screen
     // Action widget which will provide the user to acknowledge the choice
     actions: [
       IconButton(onPressed: (){
         Navigator.of(context).push(MaterialPageRoute(
             builder: ((context) => DashboardScreen())));

       }, icon: Icon(Icons.home),alignment: Alignment.center,)

     ],
   ),)

    );}
}
