// ignore_for_file: must_be_immutable

part of 'explore_tesla_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ExploreTesla widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ExploreTeslaEvent extends Equatable {}

/// Event that is dispatched when the ExploreTesla widget is first created.
class ExploreTeslaInitialEvent extends ExploreTeslaEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends ExploreTeslaEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for dropdown selection
class ChangeDropDown1Event extends ExploreTeslaEvent {
  ChangeDropDown1Event({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for dropdown selection
class ChangeDropDown2Event extends ExploreTeslaEvent {
  ChangeDropDown2Event({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
