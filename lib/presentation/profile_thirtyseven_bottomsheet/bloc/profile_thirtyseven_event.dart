// ignore_for_file: must_be_immutable

part of 'profile_thirtyseven_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileThirtyseven widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileThirtysevenEvent extends Equatable {}

/// Event that is dispatched when the ProfileThirtyseven widget is first created.
class ProfileThirtysevenInitialEvent extends ProfileThirtysevenEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing ChipView selection
class UpdateChipViewEvent extends ProfileThirtysevenEvent {
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
