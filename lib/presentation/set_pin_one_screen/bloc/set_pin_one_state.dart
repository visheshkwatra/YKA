// ignore_for_file: must_be_immutable

part of 'set_pin_one_bloc.dart';

/// Represents the state of SetPinOne in the application.
class SetPinOneState extends Equatable {
  SetPinOneState({
    this.otpController,
    this.setPinOneModelObj,
  });

  TextEditingController? otpController;

  SetPinOneModel? setPinOneModelObj;

  @override
  List<Object?> get props => [
        otpController,
        setPinOneModelObj,
      ];
  SetPinOneState copyWith({
    TextEditingController? otpController,
    SetPinOneModel? setPinOneModelObj,
  }) {
    return SetPinOneState(
      otpController: otpController ?? this.otpController,
      setPinOneModelObj: setPinOneModelObj ?? this.setPinOneModelObj,
    );
  }
}
