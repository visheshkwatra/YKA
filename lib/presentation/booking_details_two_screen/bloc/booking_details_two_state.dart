// ignore_for_file: must_be_immutable

part of 'booking_details_two_bloc.dart';

/// Represents the state of BookingDetailsTwo in the application.
class BookingDetailsTwoState extends Equatable {
  BookingDetailsTwoState({this.bookingDetailsTwoModelObj});

  BookingDetailsTwoModel? bookingDetailsTwoModelObj;

  @override
  List<Object?> get props => [
        bookingDetailsTwoModelObj,
      ];
  BookingDetailsTwoState copyWith(
      {BookingDetailsTwoModel? bookingDetailsTwoModelObj}) {
    return BookingDetailsTwoState(
      bookingDetailsTwoModelObj:
          bookingDetailsTwoModelObj ?? this.bookingDetailsTwoModelObj,
    );
  }
}
