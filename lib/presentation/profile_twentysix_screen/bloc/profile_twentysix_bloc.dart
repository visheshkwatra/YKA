import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:yka_app/presentation/profile_twentysix_screen/models/profile_twentysix_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
part 'profile_twentysix_event.dart';
part 'profile_twentysix_state.dart';

/// A bloc that manages the state of a ProfileTwentysix according to the event that is dispatched to it.
class ProfileTwentysixBloc
    extends Bloc<ProfileTwentysixEvent, ProfileTwentysixState>
    with CodeAutoFill {
  ProfileTwentysixBloc(ProfileTwentysixState initialState)
      : super(initialState) {
    on<ProfileTwentysixInitialEvent>(_onInitialize);
    on<ChangeOTPEvent>(_changeOTP);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
  }

  @override
  codeUpdated() {
    add(ChangeOTPEvent(code: code!));
  }

  _changeOTP(
    ChangeOTPEvent event,
    Emitter<ProfileTwentysixState> emit,
  ) {
    emit(state.copyWith(
      otpController: TextEditingController(text: event.code),
    ));
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<ProfileTwentysixState> emit,
  ) {
    emit(state.copyWith(
      checkBox: event.value,
    ));
  }

  _onInitialize(
    ProfileTwentysixInitialEvent event,
    Emitter<ProfileTwentysixState> emit,
  ) async {
    emit(state.copyWith(
      otpController: TextEditingController(),
      checkBox: false,
    ));
    listenForCode();
  }
}
