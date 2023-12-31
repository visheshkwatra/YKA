import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:yka_app/presentation/profile_nine_screen/models/profile_nine_model.dart';part 'profile_nine_event.dart';part 'profile_nine_state.dart';/// A bloc that manages the state of a ProfileNine according to the event that is dispatched to it.
class ProfileNineBloc extends Bloc<ProfileNineEvent, ProfileNineState> {ProfileNineBloc(ProfileNineState initialState) : super(initialState) { on<ProfileNineInitialEvent>(_onInitialize); }

_onInitialize(ProfileNineInitialEvent event, Emitter<ProfileNineState> emit, ) async  { emit(state.copyWith(zipCodeTextFieldController: TextEditingController(), mobileNumberTextFieldController: TextEditingController(), secondaryZipCodeTextFieldController: TextEditingController(), zipCodeTextFieldController1: TextEditingController())); } 
 }
