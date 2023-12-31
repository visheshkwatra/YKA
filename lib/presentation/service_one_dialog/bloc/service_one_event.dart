// ignore_for_file: must_be_immutable

part of 'service_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ServiceOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ServiceOneEvent extends Equatable {}

/// Event that is dispatched when the ServiceOne widget is first created.
class ServiceOneInitialEvent extends ServiceOneEvent {
  @override
  List<Object?> get props => [];
}
