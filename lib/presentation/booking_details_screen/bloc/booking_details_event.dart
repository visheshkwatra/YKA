// ignore_for_file: must_be_immutable

part of 'booking_details_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///BookingDetails widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class BookingDetailsEvent extends Equatable {}

/// Event that is dispatched when the BookingDetails widget is first created.
class BookingDetailsInitialEvent extends BookingDetailsEvent {
  @override
  List<Object?> get props => [];
}
