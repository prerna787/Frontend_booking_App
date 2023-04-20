import 'package:booking_app/data/repository/user_repository.dart';
import 'package:booking_app/views/Dashboard/bloc/dashboard.dart';
import 'package:booking_app/views/SearchPage/search_result.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:booking_app/views/Dashboard/bloc/dashboard_bloc.dart';
import 'package:booking_app/views/Login/bloc/auth_bloc.dart';
import 'package:booking_app/views/Login/login.dart';

import '../../../data/model/hotel_model.dart';

class RouteGenerator {
  final AuthBloc _authBloc = AuthBloc(UserRepository());
  final DashboardBloc _dashboardBloc = DashboardBloc();

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

      case '/dashboard':

          return MaterialPageRoute(
            builder: (_) => BlocProvider<DashboardBloc>.value(
              value: _dashboardBloc,
              child: Dashboard(),
            ),
          );



        break;
      case '/search':
        return MaterialPageRoute(
          builder: (_) => BlocProvider<DashboardBloc>.value(
            value: _dashboardBloc,
            child: Result(hotelResponse: args as List<HotelModel>),
          ),
        );

        return _errorRoute();

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
