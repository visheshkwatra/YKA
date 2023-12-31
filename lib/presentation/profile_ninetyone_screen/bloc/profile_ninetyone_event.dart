// ignore_for_file: must_be_immutable

part of 'profile_ninetyone_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileNinetyone widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileNinetyoneEvent extends Equatable {}

/// Event that is dispatched when the ProfileNinetyone widget is first created.
class ProfileNinetyoneInitialEvent extends ProfileNinetyoneEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends ProfileNinetyoneEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
