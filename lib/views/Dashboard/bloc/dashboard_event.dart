part of 'dashboard_bloc.dart';


abstract class DashboardEvent {}
class NavBack extends DashboardEvent {}
class Search extends DashboardEvent {
  late final String city;


  Search(this.city);
}

