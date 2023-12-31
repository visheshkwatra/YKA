// ignore_for_file: must_be_immutable

part of 'my_vehicle_details_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyVehicleDetails widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MyVehicleDetailsEvent extends Equatable {}

/// Event that is dispatched when the MyVehicleDetails widget is first created.
class MyVehicleDetailsInitialEvent extends MyVehicleDetailsEvent {
  @override
  List<Object?> get props => [];
}
