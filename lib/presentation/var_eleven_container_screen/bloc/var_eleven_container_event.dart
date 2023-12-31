// ignore_for_file: must_be_immutable

part of 'var_eleven_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///VarElevenContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class VarElevenContainerEvent extends Equatable {}

/// Event that is dispatched when the VarElevenContainer widget is first created.
class VarElevenContainerInitialEvent extends VarElevenContainerEvent {
  @override
  List<Object?> get props => [];
}
