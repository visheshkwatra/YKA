// ignore_for_file: must_be_immutable

part of 'otp_verification_filled_bloc.dart';

/// Represents the state of OtpVerificationFilled in the application.
class OtpVerificationFilledState extends Equatable {
  OtpVerificationFilledState({this.otpVerificationFilledModelObj});

  OtpVerificationFilledModel? otpVerificationFilledModelObj;

  @override
  List<Object?> get props => [
        otpVerificationFilledModelObj,
      ];
  OtpVerificationFilledState copyWith(
      {OtpVerificationFilledModel? otpVerificationFilledModelObj}) {
    return OtpVerificationFilledState(
      otpVerificationFilledModelObj:
          otpVerificationFilledModelObj ?? this.otpVerificationFilledModelObj,
    );
  }
}
