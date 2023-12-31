// ignore_for_file: must_be_immutable

part of 'explore_maserati_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ExploreMaserati widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ExploreMaseratiEvent extends Equatable {}

/// Event that is dispatched when the ExploreMaserati widget is first created.
class ExploreMaseratiInitialEvent extends ExploreMaseratiEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends ExploreMaseratiEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for dropdown selection
class ChangeDropDown1Event extends ExploreMaseratiEvent {
  ChangeDropDown1Event({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for dropdown selection
class ChangeDropDown2Event extends ExploreMaseratiEvent {
  ChangeDropDown2Event({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
