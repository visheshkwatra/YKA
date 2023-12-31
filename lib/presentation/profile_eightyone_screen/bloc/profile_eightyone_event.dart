// ignore_for_file: must_be_immutable

part of 'profile_eightyone_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileEightyone widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileEightyoneEvent extends Equatable {}

/// Event that is dispatched when the ProfileEightyone widget is first created.
class ProfileEightyoneInitialEvent extends ProfileEightyoneEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends ProfileEightyoneEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
