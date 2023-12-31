// ignore_for_file: must_be_immutable

part of 'var_fiftythree_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///VarFiftythree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class VarFiftythreeEvent extends Equatable {}

/// Event that is dispatched when the VarFiftythree widget is first created.
class VarFiftythreeInitialEvent extends VarFiftythreeEvent {
  @override
  List<Object?> get props => [];
}
