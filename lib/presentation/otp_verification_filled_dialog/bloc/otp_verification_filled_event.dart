// ignore_for_file: must_be_immutable

part of 'otp_verification_filled_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///OtpVerificationFilled widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OtpVerificationFilledEvent extends Equatable {}

/// Event that is dispatched when the OtpVerificationFilled widget is first created.
class OtpVerificationFilledInitialEvent extends OtpVerificationFilledEvent {
  @override
  List<Object?> get props => [];
}
