// ignore_for_file: must_be_immutable

part of 'my_vehicle_details_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyVehicleDetailsOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MyVehicleDetailsOneEvent extends Equatable {}

/// Event that is dispatched when the MyVehicleDetailsOne widget is first created.
class MyVehicleDetailsOneInitialEvent extends MyVehicleDetailsOneEvent {
  @override
  List<Object?> get props => [];
}
