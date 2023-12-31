// ignore_for_file: must_be_immutable

part of 'profile_seventysix_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileSeventysix widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileSeventysixEvent extends Equatable {}

/// Event that is dispatched when the ProfileSeventysix widget is first created.
class ProfileSeventysixInitialEvent extends ProfileSeventysixEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends ProfileSeventysixEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
