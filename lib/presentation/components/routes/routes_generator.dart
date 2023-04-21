import 'package:booking_app/data/repository/booking_repository.dart';
import 'package:booking_app/data/repository/user_repository.dart';
import 'package:booking_app/views/Booking/bloc/booking_bloc.dart';
import 'package:booking_app/views/booking_history.dart';
import 'package:booking_app/views/booking_page.dart';
import 'package:booking_app/views/search_result.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:booking_app/views/Dashboard/bloc/dashboard_bloc.dart';
import 'package:booking_app/views/Login/bloc/auth_bloc.dart';
import 'package:booking_app/views/Login/login.dart';

import '../../../data/model/hotel_model.dart';
import '../../../views/Dashboard/dashboard.dart';
import '../../../views/hotell_details.dart';

class RouteGenerator {
  final AuthBloc _authBloc = AuthBloc(UserRepository());
  final DashboardBloc _dashboardBloc = DashboardBloc();
  final BookingBloc _bookingBloc=BookingBloc(BookingRepository());

  Route<dynamic>? generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => BlocProvider<AuthBloc>.value(
            value: _authBloc,
            child: const MyHomePage(title: "Booking App"),
          ),
        );

      case '/searchHotel':

          return MaterialPageRoute(
            builder: (_) => BlocProvider<DashboardBloc>.value(
              value: _dashboardBloc,
              child: Dashboard(),
            ),
          );


      case '/myBooking':
        return MaterialPageRoute(
          builder: (_) => BlocProvider<BookingBloc>.value(
            value: _bookingBloc,
            child:  BookingScreen(),
          ),
        );
      case '/details':
        return MaterialPageRoute(
          builder: (_) => BlocProvider<BookingBloc>.value(
            value: _bookingBloc,
            child:  HotelDetails(hotelModel:args as HotelModel),
          ),
        );


      case '/search':
        return MaterialPageRoute(
          builder: (_) => BlocProvider<DashboardBloc>.value(
            value: _dashboardBloc,
            child: Result(hotelResponse: args as List<HotelModel>),
          ),
        );



      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('ERROR IN NAVIGATION'),
        ),
      );
    });
  }
}
