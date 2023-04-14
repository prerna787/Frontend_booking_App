import 'package:booking_app/network/local_storage.dart';
import 'package:booking_app/presentation/components/routes/routes_generator.dart';
import 'package:booking_app/views/Dashboard/bloc/dashboard.dart';
import 'package:booking_app/views/Login/login.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  await CacheNetwork.cacheInitialization();
   String? token = await CacheNetwork.getCacheData(key: 'token')  ;
  debugPrint("token is : $token");
  runApp(MyApp(
    //Todo pass boolean that tell about token presence

    isTokenPresent:(token != null),

  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, required this.isTokenPresent}) : super(key: key);
  // TODO create Boolean to check Token is present
  final bool isTokenPresent;


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Booking App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: isTokenPresent != null ? const MyHomePage(title: 'Booking app') : Dashboard());
      initialRoute:
      isTokenPresent  ?  '/' : '/dashboard',// todo check based on token

       onGenerateRoute: RouteGenerator().generateRoute,);



  }
}
