// ignore_for_file: must_be_immutable

part of 'set_pin_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SetPin widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SetPinEvent extends Equatable {}

/// Event that is dispatched when the SetPin widget is first created.
class SetPinInitialEvent extends SetPinEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill
class ChangeOTPEvent extends SetPinEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}
