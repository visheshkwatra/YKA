// ignore_for_file: must_be_immutable

part of 'set_pin_two_bloc.dart';

/// Represents the state of SetPinTwo in the application.
class SetPinTwoState extends Equatable {
  SetPinTwoState({
    this.otpController,
    this.setPinTwoModelObj,
  });

  TextEditingController? otpController;

  SetPinTwoModel? setPinTwoModelObj;

  @override
  List<Object?> get props => [
        otpController,
        setPinTwoModelObj,
      ];
  SetPinTwoState copyWith({
    TextEditingController? otpController,
    SetPinTwoModel? setPinTwoModelObj,
  }) {
    return SetPinTwoState(
      otpController: otpController ?? this.otpController,
      setPinTwoModelObj: setPinTwoModelObj ?? this.setPinTwoModelObj,
    );
  }
}
