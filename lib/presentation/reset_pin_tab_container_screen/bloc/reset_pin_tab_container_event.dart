// ignore_for_file: must_be_immutable

part of 'reset_pin_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ResetPinTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ResetPinTabContainerEvent extends Equatable {}

/// Event that is dispatched when the ResetPinTabContainer widget is first created.
class ResetPinTabContainerInitialEvent extends ResetPinTabContainerEvent {
  @override
  List<Object?> get props => [];
}
