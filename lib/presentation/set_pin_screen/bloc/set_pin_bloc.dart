import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:yka_app/presentation/set_pin_screen/models/set_pin_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
part 'set_pin_event.dart';
part 'set_pin_state.dart';

/// A bloc that manages the state of a SetPin according to the event that is dispatched to it.
class SetPinBloc extends Bloc<SetPinEvent, SetPinState> with CodeAutoFill {
  SetPinBloc(SetPinState initialState) : super(initialState) {
    on<SetPinInitialEvent>(_onInitialize);
    on<ChangeOTPEvent>(_changeOTP);
  }

  @override
  codeUpdated() {
    add(ChangeOTPEvent(code: code!));
  }

  _changeOTP(
    ChangeOTPEvent event,
    Emitter<SetPinState> emit,
  ) {
    emit(state.copyWith(
      otpController: TextEditingController(text: event.code),
    ));
  }

  _onInitialize(
    SetPinInitialEvent event,
    Emitter<SetPinState> emit,
  ) async {
    emit(state.copyWith(
      otpController: TextEditingController(),
    ));
    listenForCode();
  }
}
