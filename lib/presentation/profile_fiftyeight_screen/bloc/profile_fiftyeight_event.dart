// ignore_for_file: must_be_immutable

part of 'profile_fiftyeight_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileFiftyeight widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileFiftyeightEvent extends Equatable {}

/// Event that is dispatched when the ProfileFiftyeight widget is first created.
class ProfileFiftyeightInitialEvent extends ProfileFiftyeightEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing switch
class ChangeSwitchEvent extends ProfileFiftyeightEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
