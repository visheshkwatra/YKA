// ignore_for_file: must_be_immutable

part of 'var_six_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///VarSix widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class VarSixEvent extends Equatable {}

/// Event that is dispatched when the VarSix widget is first created.
class VarSixInitialEvent extends VarSixEvent {
  @override
  List<Object?> get props => [];
}
