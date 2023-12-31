// ignore_for_file: must_be_immutable

part of 'profile_nineteen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileNineteen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileNineteenEvent extends Equatable {}

/// Event that is dispatched when the ProfileNineteen widget is first created.
class ProfileNineteenInitialEvent extends ProfileNineteenEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill
class ChangeOTPEvent extends ProfileNineteenEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends ProfileNineteenEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
