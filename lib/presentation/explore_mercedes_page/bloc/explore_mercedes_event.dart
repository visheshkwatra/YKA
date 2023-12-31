// ignore_for_file: must_be_immutable

part of 'explore_mercedes_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ExploreMercedes widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ExploreMercedesEvent extends Equatable {}

/// Event that is dispatched when the ExploreMercedes widget is first created.
class ExploreMercedesInitialEvent extends ExploreMercedesEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends ExploreMercedesEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for dropdown selection
class ChangeDropDown1Event extends ExploreMercedesEvent {
  ChangeDropDown1Event({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for dropdown selection
class ChangeDropDown2Event extends ExploreMercedesEvent {
  ChangeDropDown2Event({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
