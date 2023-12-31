import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:yka_app/presentation/profile_five_screen/models/profile_five_model.dart';import 'package:sms_autofill/sms_autofill.dart';part 'profile_five_event.dart';part 'profile_five_state.dart';/// A bloc that manages the state of a ProfileFive according to the event that is dispatched to it.
class ProfileFiveBloc extends Bloc<ProfileFiveEvent, ProfileFiveState> with  CodeAutoFill {ProfileFiveBloc(ProfileFiveState initialState) : super(initialState) { on<ProfileFiveInitialEvent>(_onInitialize); on<ChangeOTPEvent>(_changeOTP); on<ChangeCheckBoxEvent>(_changeCheckBox); }

@override codeUpdated() { add(ChangeOTPEvent(code: code!)); } 
_changeOTP(ChangeOTPEvent event, Emitter<ProfileFiveState> emit, ) { emit(state.copyWith(otpController: TextEditingController(text: event.code))); } 
_changeCheckBox(ChangeCheckBoxEvent event, Emitter<ProfileFiveState> emit, ) { emit(state.copyWith(iAgreeToTheTerms: event.value)); } 
_onInitialize(ProfileFiveInitialEvent event, Emitter<ProfileFiveState> emit, ) async  { emit(state.copyWith(otpController: TextEditingController(), iAgreeToTheTerms: false)); listenForCode(); } 
 }
