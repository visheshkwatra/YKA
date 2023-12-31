import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:yka_app/presentation/profile_nineteen_screen/models/profile_nineteen_model.dart';import 'package:sms_autofill/sms_autofill.dart';part 'profile_nineteen_event.dart';part 'profile_nineteen_state.dart';/// A bloc that manages the state of a ProfileNineteen according to the event that is dispatched to it.
class ProfileNineteenBloc extends Bloc<ProfileNineteenEvent, ProfileNineteenState> with  CodeAutoFill {ProfileNineteenBloc(ProfileNineteenState initialState) : super(initialState) { on<ProfileNineteenInitialEvent>(_onInitialize); on<ChangeOTPEvent>(_changeOTP); on<ChangeCheckBoxEvent>(_changeCheckBox); }

@override codeUpdated() { add(ChangeOTPEvent(code: code!)); } 
_changeOTP(ChangeOTPEvent event, Emitter<ProfileNineteenState> emit, ) { emit(state.copyWith(otpController: TextEditingController(text: event.code))); } 
_changeCheckBox(ChangeCheckBoxEvent event, Emitter<ProfileNineteenState> emit, ) { emit(state.copyWith(iAgreeToTheTerms: event.value)); } 
_onInitialize(ProfileNineteenInitialEvent event, Emitter<ProfileNineteenState> emit, ) async  { emit(state.copyWith(otpController: TextEditingController(), iAgreeToTheTerms: false)); listenForCode(); } 
 }
