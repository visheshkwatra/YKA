// ignore_for_file: must_be_immutable

part of 'set_pin_bloc.dart';

/// Represents the state of SetPin in the application.
class SetPinState extends Equatable {
  SetPinState({
    this.otpController,
    this.setPinModelObj,
  });

  TextEditingController? otpController;

  SetPinModel? setPinModelObj;

  @override
  List<Object?> get props => [
        otpController,
        setPinModelObj,
      ];
  SetPinState copyWith({
    TextEditingController? otpController,
    SetPinModel? setPinModelObj,
  }) {
    return SetPinState(
      otpController: otpController ?? this.otpController,
      setPinModelObj: setPinModelObj ?? this.setPinModelObj,
    );
  }
}
