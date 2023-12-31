import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:yka_app/presentation/profile_twentythree_screen/models/profile_twentythree_model.dart';import 'package:sms_autofill/sms_autofill.dart';part 'profile_twentythree_event.dart';part 'profile_twentythree_state.dart';/// A bloc that manages the state of a ProfileTwentythree according to the event that is dispatched to it.
class ProfileTwentythreeBloc extends Bloc<ProfileTwentythreeEvent, ProfileTwentythreeState> with  CodeAutoFill {ProfileTwentythreeBloc(ProfileTwentythreeState initialState) : super(initialState) { on<ProfileTwentythreeInitialEvent>(_onInitialize); on<ChangeOTPEvent>(_changeOTP); on<ChangeCheckBoxEvent>(_changeCheckBox); }

@override codeUpdated() { add(ChangeOTPEvent(code: code!)); } 
_changeOTP(ChangeOTPEvent event, Emitter<ProfileTwentythreeState> emit, ) { emit(state.copyWith(otpController: TextEditingController(text: event.code))); } 
_changeCheckBox(ChangeCheckBoxEvent event, Emitter<ProfileTwentythreeState> emit, ) { emit(state.copyWith(iagreetothetermsofuse: event.value)); } 
_onInitialize(ProfileTwentythreeInitialEvent event, Emitter<ProfileTwentythreeState> emit, ) async  { emit(state.copyWith(otpController: TextEditingController(), iagreetothetermsofuse: false)); listenForCode(); } 
 }
