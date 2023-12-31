import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:yka_app/presentation/otp_verification_filled_dialog/models/otp_verification_filled_model.dart';
part 'otp_verification_filled_event.dart';
part 'otp_verification_filled_state.dart';

/// A bloc that manages the state of a OtpVerificationFilled according to the event that is dispatched to it.
class OtpVerificationFilledBloc
    extends Bloc<OtpVerificationFilledEvent, OtpVerificationFilledState> {
  OtpVerificationFilledBloc(OtpVerificationFilledState initialState)
      : super(initialState) {
    on<OtpVerificationFilledInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OtpVerificationFilledInitialEvent event,
    Emitter<OtpVerificationFilledState> emit,
  ) async {}
}
