// ignore_for_file: must_be_immutable

part of 'var_fortyone_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///VarFortyone widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class VarFortyoneEvent extends Equatable {}

/// Event that is dispatched when the VarFortyone widget is first created.
class VarFortyoneInitialEvent extends VarFortyoneEvent {
  @override
  List<Object?> get props => [];
}
