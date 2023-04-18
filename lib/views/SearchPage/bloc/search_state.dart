part of 'search_bloc.dart';

abstract class SearchState {}

class SearchInitial extends SearchState {}

class SearchLoading extends SearchState {}

class SearchLoaded extends SearchState {
  final String hotelName;

  SearchLoaded(this.hotelName);
}

class SearchError extends SearchState {}
