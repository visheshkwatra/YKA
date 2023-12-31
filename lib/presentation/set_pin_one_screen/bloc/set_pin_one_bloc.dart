import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:yka_app/presentation/set_pin_one_screen/models/set_pin_one_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
part 'set_pin_one_event.dart';
part 'set_pin_one_state.dart';

/// A bloc that manages the state of a SetPinOne according to the event that is dispatched to it.
class SetPinOneBloc extends Bloc<SetPinOneEvent, SetPinOneState>
    with CodeAutoFill {
  SetPinOneBloc(SetPinOneState initialState) : super(initialState) {
    on<SetPinOneInitialEvent>(_onInitialize);
    on<ChangeOTPEvent>(_changeOTP);
  }

  @override
  codeUpdated() {
    add(ChangeOTPEvent(code: code!));
  }

  _changeOTP(
    ChangeOTPEvent event,
    Emitter<SetPinOneState> emit,
  ) {
    emit(state.copyWith(
      otpController: TextEditingController(text: event.code),
    ));
  }

  _onInitialize(
    SetPinOneInitialEvent event,
    Emitter<SetPinOneState> emit,
  ) async {
    emit(state.copyWith(
      otpController: TextEditingController(),
    ));
    listenForCode();
  }
}
