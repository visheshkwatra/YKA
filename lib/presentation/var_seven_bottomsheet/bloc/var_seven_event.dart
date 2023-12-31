// ignore_for_file: must_be_immutable

part of 'var_seven_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///VarSeven widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class VarSevenEvent extends Equatable {}

/// Event that is dispatched when the VarSeven widget is first created.
class VarSevenInitialEvent extends VarSevenEvent {
  @override
  List<Object?> get props => [];
}
