import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:yka_app/presentation/profile_seventeen_screen/models/profile_seventeen_model.dart';part 'profile_seventeen_event.dart';part 'profile_seventeen_state.dart';/// A bloc that manages the state of a ProfileSeventeen according to the event that is dispatched to it.
class ProfileSeventeenBloc extends Bloc<ProfileSeventeenEvent, ProfileSeventeenState> {ProfileSeventeenBloc(ProfileSeventeenState initialState) : super(initialState) { on<ProfileSeventeenInitialEvent>(_onInitialize); }

_onInitialize(ProfileSeventeenInitialEvent event, Emitter<ProfileSeventeenState> emit, ) async  { emit(state.copyWith(firstNameFieldController: TextEditingController(), lastNameFieldController: TextEditingController(), zipcodeFieldController: TextEditingController(), carDetailValueFieldController: TextEditingController())); } 
 }
