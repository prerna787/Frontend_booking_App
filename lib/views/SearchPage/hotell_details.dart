import 'package:booking_app/data/model/hotel_model.dart';
import 'package:booking_app/presentation/components/spacers.dart';
import 'package:booking_app/views/Dashboard/bloc/dashboard_bloc.dart';
import 'package:booking_app/views/SearchPage/bookingPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class HotelDetails extends StatelessWidget {
  const HotelDetails({Key? key, required this.index, required this.hotelModel}) : super(key: key);
  final int index;
  final HotelModel hotelModel;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text('Hotel Details $index')),
      body: Container(
        padding:EdgeInsets.symmetric(horizontal: 40,vertical: 90),

        child:
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            children: [

              Text('Hotel id: ${hotelModel.id}',
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
              HeightSpacer(myHeight: 10),

              Text('Hotel Name:  ${hotelModel.id}',
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),

              Text('City : ${hotelModel.id}',
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),

              Text('Price per Night :  ${hotelModel.id}',
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),

              // Text('${hotelModel.[index].id}'.toString()),
              // Text('${HotelModel.name}'),
              // Text('${HotelModel.city}'),
              // Text('${HotelModel.pricePerNight}'),
              HeightSpacer(myHeight: 10),
              Center(child: ElevatedButton(onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(
                    builder: ((context) => BookingScreen( ))));

    }, 
                  child: Text('Click to Book')))

            ],
          ),
      ),
      );
    
  }
}


