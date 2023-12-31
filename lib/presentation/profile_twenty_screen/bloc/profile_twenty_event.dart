// ignore_for_file: must_be_immutable

part of 'profile_twenty_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileTwenty widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileTwentyEvent extends Equatable {}

/// Event that is dispatched when the ProfileTwenty widget is first created.
class ProfileTwentyInitialEvent extends ProfileTwentyEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill
class ChangeOTPEvent extends ProfileTwentyEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends ProfileTwentyEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
