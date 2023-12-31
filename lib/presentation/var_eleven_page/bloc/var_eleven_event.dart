// ignore_for_file: must_be_immutable

part of 'var_eleven_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///VarEleven widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class VarElevenEvent extends Equatable {}

/// Event that is dispatched when the VarEleven widget is first created.
class VarElevenInitialEvent extends VarElevenEvent {
  @override
  List<Object?> get props => [];
}
