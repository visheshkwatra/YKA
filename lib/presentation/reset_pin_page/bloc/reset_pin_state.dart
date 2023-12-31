// ignore_for_file: must_be_immutable

part of 'reset_pin_bloc.dart';

/// Represents the state of ResetPin in the application.
class ResetPinState extends Equatable {
  ResetPinState({this.resetPinModelObj});

  ResetPinModel? resetPinModelObj;

  @override
  List<Object?> get props => [
        resetPinModelObj,
      ];
  ResetPinState copyWith({ResetPinModel? resetPinModelObj}) {
    return ResetPinState(
      resetPinModelObj: resetPinModelObj ?? this.resetPinModelObj,
    );
  }
}
