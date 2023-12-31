// ignore_for_file: must_be_immutable

part of 'profile_seventynine_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileSeventynine widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileSeventynineEvent extends Equatable {}

/// Event that is dispatched when the ProfileSeventynine widget is first created.
class ProfileSeventynineInitialEvent extends ProfileSeventynineEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends ProfileSeventynineEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
