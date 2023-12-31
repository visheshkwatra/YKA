// ignore_for_file: must_be_immutable

part of 'profile_eight_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileEight widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileEightEvent extends Equatable {}

/// Event that is dispatched when the ProfileEight widget is first created.
class ProfileEightInitialEvent extends ProfileEightEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill
class ChangeOTPEvent extends ProfileEightEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends ProfileEightEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
