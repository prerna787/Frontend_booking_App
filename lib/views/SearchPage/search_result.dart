

import 'package:booking_app/data/model/hotel_model.dart';
import 'package:booking_app/views/Dashboard/bloc/dashboard_bloc.dart';
import 'package:booking_app/views/SearchPage/hotell_details.dart';
import 'package:flutter/material.dart';



class Result extends StatelessWidget {

  final List<HotelModel> hotelResponse;

  Result({Key? key, required this.hotelResponse}) : super(key: key);


  @override
  Widget build(BuildContext context) {//${hotelResponse[index].id}'

    return  Scaffold(
          appBar: AppBar(title: Text('Hotel List'),),
      body: Center(
          child:  ListView.builder(
            itemCount: hotelResponse.length,
            itemBuilder: ((context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(

                  color: Color.fromARGB(255, 47, 222, 187),
                  child: SingleChildScrollView(
                      child: Padding( padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                        child:
                        Row(
                          children: [InkWell(
                            onTap:(){
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: ((context) => HotelDetails(index: index, hotelModel: hotelResponse[index]  ))));
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Hotel id: ${hotelResponse[index].id}',
                                  style: TextStyle(fontSize: 18),
                                ),
                                Text(
                                  'Hotel name: ${hotelResponse[index].name}',
                                  style: TextStyle(fontSize: 18),
                                ),

                                Text(
                                  'City: ${hotelResponse[index].city}',
                                  maxLines: 1,
                                  style: TextStyle(fontSize: 18),
                                ),
                                Text(
                                  'Price per Night: ${hotelResponse[index].pricePerNight}',
                                  style: TextStyle(fontSize: 18),
                                ),
                              ],

                            ),
                          ),
                            Column(
                              children: [
                                IconButton(onPressed: (){}, icon: Icon(Icons.favorite)

                            )
                          ],


                        ),
                      ]
                          )

                  ),
                ),
                ));

            }),
          )
      )
    );



  }




}
