import 'package:booking_app/data/model/hotel_model.dart';
import 'package:booking_app/presentation/components/spacers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../data/local_storage.dart';
import '../presentation/components/loader.dart';
import 'Booking/bloc/booking_bloc.dart';
class HotelDetails extends StatelessWidget {
  const HotelDetails({Key? key,  required this.hotelModel, }) : super(key: key);

  final HotelModel hotelModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hotel Details '),
      ),

      body: BlocConsumer<BookingBloc, BookingState>(
        listener: (context, state) {
          if (state is FormLoaded){
            showDialog(context: context, builder: (BuildContext context){
              return AlertDialog(
                title: Text("Success"),
                titleTextStyle:
                TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,fontSize: 20),
                actionsOverflowButtonSpacing: 20,
                actions: [

                 IconButton(onPressed: (){ Navigator.of(context)
                     .pushNamed('/dashboardScreen');}, icon: Icon(Icons.home),alignment: Alignment.center,),
                ],
                content: Text("Booking Successful"),
              );

            });
          }
        },
        builder: (context, state) {
          if (state is FormLoading) {
            return LoadingWidget(child: initialLayout(context),
              );
          } else {
            return initialLayout(context);
          }
        },
      )
    );
    
  }
  Widget initialLayout(BuildContext context) =>
      Center(
        child: Container(
          padding:EdgeInsets.symmetric(horizontal: 40,vertical: 90),
          child:
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              Text('Hotel id:        ${hotelModel.id}',
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
              HeightSpacer(myHeight: 10),

              Text('Hotel Name:  ${hotelModel.name}',
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),

              Text('City :       ${hotelModel.city}',
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),

              Text('Price per Night :  ${hotelModel.pricePerNight}',
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),

              HeightSpacer(myHeight: 10),
              Center(child: ElevatedButton(child: Text('Click to Book Hotel'),
                onPressed: ()async{


                String? username = await CacheNetwork.getCacheData(key: 'username')  ;

                BlocProvider.of<BookingBloc>(context).add(
                    SubmitForm(hotelId: '${hotelModel.id}',name: '${hotelModel.name}',userName:username! ));


              },


              )

              )

            ],
          ),
        ),
      );

}


