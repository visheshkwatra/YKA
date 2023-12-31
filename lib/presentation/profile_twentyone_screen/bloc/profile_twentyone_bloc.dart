import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:yka_app/presentation/profile_twentyone_screen/models/profile_twentyone_model.dart';part 'profile_twentyone_event.dart';part 'profile_twentyone_state.dart';/// A bloc that manages the state of a ProfileTwentyone according to the event that is dispatched to it.
class ProfileTwentyoneBloc extends Bloc<ProfileTwentyoneEvent, ProfileTwentyoneState> {ProfileTwentyoneBloc(ProfileTwentyoneState initialState) : super(initialState) { on<ProfileTwentyoneInitialEvent>(_onInitialize); }

_onInitialize(ProfileTwentyoneInitialEvent event, Emitter<ProfileTwentyoneState> emit, ) async  { emit(state.copyWith(firstNameFieldController: TextEditingController(), lastNameFieldController: TextEditingController(), zipcodeFieldController: TextEditingController())); } 
 }
