// ignore_for_file: must_be_immutable

part of 'var_eight_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///VarEight widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class VarEightEvent extends Equatable {}

/// Event that is dispatched when the VarEight widget is first created.
class VarEightInitialEvent extends VarEightEvent {
  @override
  List<Object?> get props => [];
}
