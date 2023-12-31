// ignore_for_file: must_be_immutable

part of 'service_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Service widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ServiceEvent extends Equatable {}

/// Event that is dispatched when the Service widget is first created.
class ServiceInitialEvent extends ServiceEvent {
  @override
  List<Object?> get props => [];
}
