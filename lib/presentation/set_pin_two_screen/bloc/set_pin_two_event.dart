// ignore_for_file: must_be_immutable

part of 'set_pin_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SetPinTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SetPinTwoEvent extends Equatable {}

/// Event that is dispatched when the SetPinTwo widget is first created.
class SetPinTwoInitialEvent extends SetPinTwoEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill
class ChangeOTPEvent extends SetPinTwoEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}
