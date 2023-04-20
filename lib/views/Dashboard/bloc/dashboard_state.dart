part of 'dashboard_bloc.dart';

@immutable
abstract class DashboardState  {}

class DashboardInitial extends DashboardState {}

class DashboardLoading extends DashboardState {}

class DashboardNav extends DashboardState{}

class SearchLoading extends DashboardState{}
class SearchFailure extends DashboardState{}
class SearchLoaded extends DashboardState{
  final List<HotelModel> hotelResponse;
  SearchLoaded( {required this.hotelResponse});
  @override
  List<Object?> get props =>[];
}



class FilterHotelsSuccessState extends DashboardState{ }