// ignore_for_file: must_be_immutable

part of 'booking_details_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///BookingDetailsOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class BookingDetailsOneEvent extends Equatable {}

/// Event that is dispatched when the BookingDetailsOne widget is first created.
class BookingDetailsOneInitialEvent extends BookingDetailsOneEvent {
  @override
  List<Object?> get props => [];
}
