// ignore_for_file: must_be_immutable

part of 'profile_twentythree_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileTwentythree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileTwentythreeEvent extends Equatable {}

/// Event that is dispatched when the ProfileTwentythree widget is first created.
class ProfileTwentythreeInitialEvent extends ProfileTwentythreeEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill
class ChangeOTPEvent extends ProfileTwentythreeEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends ProfileTwentythreeEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
