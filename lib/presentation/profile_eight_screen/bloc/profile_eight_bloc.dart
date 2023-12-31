import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:yka_app/presentation/profile_eight_screen/models/profile_eight_model.dart';import 'package:sms_autofill/sms_autofill.dart';part 'profile_eight_event.dart';part 'profile_eight_state.dart';/// A bloc that manages the state of a ProfileEight according to the event that is dispatched to it.
class ProfileEightBloc extends Bloc<ProfileEightEvent, ProfileEightState> with  CodeAutoFill {ProfileEightBloc(ProfileEightState initialState) : super(initialState) { on<ProfileEightInitialEvent>(_onInitialize); on<ChangeOTPEvent>(_changeOTP); on<ChangeCheckBoxEvent>(_changeCheckBox); }

@override codeUpdated() { add(ChangeOTPEvent(code: code!)); } 
_changeOTP(ChangeOTPEvent event, Emitter<ProfileEightState> emit, ) { emit(state.copyWith(otpController: TextEditingController(text: event.code))); } 
_changeCheckBox(ChangeCheckBoxEvent event, Emitter<ProfileEightState> emit, ) { emit(state.copyWith(iAgreeToTheTerms: event.value)); } 
_onInitialize(ProfileEightInitialEvent event, Emitter<ProfileEightState> emit, ) async  { emit(state.copyWith(otpController: TextEditingController(), iAgreeToTheTerms: false)); listenForCode(); } 
 }
