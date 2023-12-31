// ignore_for_file: must_be_immutable

part of 'explore_tesla_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ExploreTeslaOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ExploreTeslaOneEvent extends Equatable {}

/// Event that is dispatched when the ExploreTeslaOne widget is first created.
class ExploreTeslaOneInitialEvent extends ExploreTeslaOneEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing ChipView selection
class UpdateChipViewEvent extends ExploreTeslaOneEvent {
  UpdateChipViewEvent({
    required this.index,
    this.isSelected,
  });

  int index;

  bool? isSelected;

  @override
  List<Object?> get props => [
        index,
        isSelected,
      ];
}

///Event for changing ChipView selection
class UpdateChipView1Event extends ExploreTeslaOneEvent {
  UpdateChipView1Event({
    required this.index,
    this.isSelected,
  });

  int index;

  bool? isSelected;

  @override
  List<Object?> get props => [
        index,
        isSelected,
      ];
}
