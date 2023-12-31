// ignore_for_file: must_be_immutable

part of 'explore_mercedes_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ExploreMercedesTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ExploreMercedesTabContainerEvent extends Equatable {}

/// Event that is dispatched when the ExploreMercedesTabContainer widget is first created.
class ExploreMercedesTabContainerInitialEvent
    extends ExploreMercedesTabContainerEvent {
  @override
  List<Object?> get props => [];
}
