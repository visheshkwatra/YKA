// ignore_for_file: must_be_immutable

part of 'var_fiftyfour_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///VarFiftyfour widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class VarFiftyfourEvent extends Equatable {}

/// Event that is dispatched when the VarFiftyfour widget is first created.
class VarFiftyfourInitialEvent extends VarFiftyfourEvent {
  @override
  List<Object?> get props => [];
}
