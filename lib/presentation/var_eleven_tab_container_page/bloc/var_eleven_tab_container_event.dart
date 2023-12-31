// ignore_for_file: must_be_immutable

part of 'var_eleven_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///VarElevenTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class VarElevenTabContainerEvent extends Equatable {}

/// Event that is dispatched when the VarElevenTabContainer widget is first created.
class VarElevenTabContainerInitialEvent extends VarElevenTabContainerEvent {
  @override
  List<Object?> get props => [];
}
