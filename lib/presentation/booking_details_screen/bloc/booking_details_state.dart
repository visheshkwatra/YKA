// ignore_for_file: must_be_immutable

part of 'booking_details_bloc.dart';

/// Represents the state of BookingDetails in the application.
class BookingDetailsState extends Equatable {
  BookingDetailsState({this.bookingDetailsModelObj});

  BookingDetailsModel? bookingDetailsModelObj;

  @override
  List<Object?> get props => [
        bookingDetailsModelObj,
      ];
  BookingDetailsState copyWith({BookingDetailsModel? bookingDetailsModelObj}) {
    return BookingDetailsState(
      bookingDetailsModelObj:
          bookingDetailsModelObj ?? this.bookingDetailsModelObj,
    );
  }
}
