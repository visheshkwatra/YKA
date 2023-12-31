import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:yka_app/presentation/profile_twenty_screen/models/profile_twenty_model.dart';import 'package:sms_autofill/sms_autofill.dart';part 'profile_twenty_event.dart';part 'profile_twenty_state.dart';/// A bloc that manages the state of a ProfileTwenty according to the event that is dispatched to it.
class ProfileTwentyBloc extends Bloc<ProfileTwentyEvent, ProfileTwentyState> with  CodeAutoFill {ProfileTwentyBloc(ProfileTwentyState initialState) : super(initialState) { on<ProfileTwentyInitialEvent>(_onInitialize); on<ChangeOTPEvent>(_changeOTP); on<ChangeCheckBoxEvent>(_changeCheckBox); }

@override codeUpdated() { add(ChangeOTPEvent(code: code!)); } 
_changeOTP(ChangeOTPEvent event, Emitter<ProfileTwentyState> emit, ) { emit(state.copyWith(otpController: TextEditingController(text: event.code))); } 
_changeCheckBox(ChangeCheckBoxEvent event, Emitter<ProfileTwentyState> emit, ) { emit(state.copyWith(iAgreeToTheTerms: event.value)); } 
_onInitialize(ProfileTwentyInitialEvent event, Emitter<ProfileTwentyState> emit, ) async  { emit(state.copyWith(otpController: TextEditingController(), iAgreeToTheTerms: false)); listenForCode(); } 
 }
