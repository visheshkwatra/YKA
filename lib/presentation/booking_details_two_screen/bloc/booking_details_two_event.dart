// ignore_for_file: must_be_immutable

part of 'booking_details_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///BookingDetailsTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class BookingDetailsTwoEvent extends Equatable {}

/// Event that is dispatched when the BookingDetailsTwo widget is first created.
class BookingDetailsTwoInitialEvent extends BookingDetailsTwoEvent {
  @override
  List<Object?> get props => [];
}
