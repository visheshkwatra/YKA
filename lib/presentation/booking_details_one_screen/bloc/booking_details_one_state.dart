// ignore_for_file: must_be_immutable

part of 'booking_details_one_bloc.dart';

/// Represents the state of BookingDetailsOne in the application.
class BookingDetailsOneState extends Equatable {
  BookingDetailsOneState({this.bookingDetailsOneModelObj});

  BookingDetailsOneModel? bookingDetailsOneModelObj;

  @override
  List<Object?> get props => [
        bookingDetailsOneModelObj,
      ];
  BookingDetailsOneState copyWith(
      {BookingDetailsOneModel? bookingDetailsOneModelObj}) {
    return BookingDetailsOneState(
      bookingDetailsOneModelObj:
          bookingDetailsOneModelObj ?? this.bookingDetailsOneModelObj,
    );
  }
}
