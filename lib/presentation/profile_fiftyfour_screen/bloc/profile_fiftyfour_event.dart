// ignore_for_file: must_be_immutable

part of 'profile_fiftyfour_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileFiftyfour widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileFiftyfourEvent extends Equatable {}

/// Event that is dispatched when the ProfileFiftyfour widget is first created.
class ProfileFiftyfourInitialEvent extends ProfileFiftyfourEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing switch
class ChangeSwitchEvent extends ProfileFiftyfourEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
