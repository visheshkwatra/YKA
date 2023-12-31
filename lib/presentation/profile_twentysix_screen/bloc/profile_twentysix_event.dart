// ignore_for_file: must_be_immutable

part of 'profile_twentysix_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileTwentysix widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileTwentysixEvent extends Equatable {}

/// Event that is dispatched when the ProfileTwentysix widget is first created.
class ProfileTwentysixInitialEvent extends ProfileTwentysixEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill
class ChangeOTPEvent extends ProfileTwentysixEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends ProfileTwentysixEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
