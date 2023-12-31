// ignore_for_file: must_be_immutable

part of 'profile_fortyseven_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileFortyseven widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileFortysevenEvent extends Equatable {}

/// Event that is dispatched when the ProfileFortyseven widget is first created.
class ProfileFortysevenInitialEvent extends ProfileFortysevenEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing ChipView selection
class UpdateChipViewEvent extends ProfileFortysevenEvent {
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
