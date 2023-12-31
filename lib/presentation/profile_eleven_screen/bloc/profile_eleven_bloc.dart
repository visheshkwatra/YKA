import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:yka_app/presentation/profile_eleven_screen/models/profile_eleven_model.dart';part 'profile_eleven_event.dart';part 'profile_eleven_state.dart';/// A bloc that manages the state of a ProfileEleven according to the event that is dispatched to it.
class ProfileElevenBloc extends Bloc<ProfileElevenEvent, ProfileElevenState> {ProfileElevenBloc(ProfileElevenState initialState) : super(initialState) { on<ProfileElevenInitialEvent>(_onInitialize); }

_onInitialize(ProfileElevenInitialEvent event, Emitter<ProfileElevenState> emit, ) async  {  } 
 }
