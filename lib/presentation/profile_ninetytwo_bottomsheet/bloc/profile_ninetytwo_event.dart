// ignore_for_file: must_be_immutable

part of 'profile_ninetytwo_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileNinetytwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileNinetytwoEvent extends Equatable {}

/// Event that is dispatched when the ProfileNinetytwo widget is first created.
class ProfileNinetytwoInitialEvent extends ProfileNinetytwoEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing ChipView selection
class UpdateChipViewEvent extends ProfileNinetytwoEvent {
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
