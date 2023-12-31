// ignore_for_file: must_be_immutable

part of 'reset_pin_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ResetPin widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ResetPinEvent extends Equatable {}

/// Event that is dispatched when the ResetPin widget is first created.
class ResetPinInitialEvent extends ResetPinEvent {
  @override
  List<Object?> get props => [];
}
