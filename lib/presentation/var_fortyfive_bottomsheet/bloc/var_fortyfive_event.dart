// ignore_for_file: must_be_immutable

part of 'var_fortyfive_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///VarFortyfive widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class VarFortyfiveEvent extends Equatable {}

/// Event that is dispatched when the VarFortyfive widget is first created.
class VarFortyfiveInitialEvent extends VarFortyfiveEvent {
  @override
  List<Object?> get props => [];
}
