part of 'booking_bloc.dart';

@immutable
abstract class BookingEvent {}
class SubmitForm extends  BookingEvent {
final String userName;
final String name;
final String hotelId;


SubmitForm(this.userName, this.hotelId, this.name);
}

