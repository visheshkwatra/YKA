// ignore_for_file: must_be_immutable

part of 'set_pin_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SetPinOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SetPinOneEvent extends Equatable {}

/// Event that is dispatched when the SetPinOne widget is first created.
class SetPinOneInitialEvent extends SetPinOneEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill
class ChangeOTPEvent extends SetPinOneEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}
