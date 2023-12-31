import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:yka_app/presentation/set_pin_two_screen/models/set_pin_two_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
part 'set_pin_two_event.dart';
part 'set_pin_two_state.dart';

/// A bloc that manages the state of a SetPinTwo according to the event that is dispatched to it.
class SetPinTwoBloc extends Bloc<SetPinTwoEvent, SetPinTwoState>
    with CodeAutoFill {
  SetPinTwoBloc(SetPinTwoState initialState) : super(initialState) {
    on<SetPinTwoInitialEvent>(_onInitialize);
    on<ChangeOTPEvent>(_changeOTP);
  }

  @override
  codeUpdated() {
    add(ChangeOTPEvent(code: code!));
  }

  _changeOTP(
    ChangeOTPEvent event,
    Emitter<SetPinTwoState> emit,
  ) {
    emit(state.copyWith(
      otpController: TextEditingController(text: event.code),
    ));
  }

  _onInitialize(
    SetPinTwoInitialEvent event,
    Emitter<SetPinTwoState> emit,
  ) async {
    emit(state.copyWith(
      otpController: TextEditingController(),
    ));
    listenForCode();
  }
}
