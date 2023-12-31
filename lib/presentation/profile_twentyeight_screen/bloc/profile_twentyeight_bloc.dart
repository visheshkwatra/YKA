import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:yka_app/presentation/profile_twentyeight_screen/models/profile_twentyeight_model.dart';part 'profile_twentyeight_event.dart';part 'profile_twentyeight_state.dart';/// A bloc that manages the state of a ProfileTwentyeight according to the event that is dispatched to it.
class ProfileTwentyeightBloc extends Bloc<ProfileTwentyeightEvent, ProfileTwentyeightState> {ProfileTwentyeightBloc(ProfileTwentyeightState initialState) : super(initialState) { on<ProfileTwentyeightInitialEvent>(_onInitialize); }

_onInitialize(ProfileTwentyeightInitialEvent event, Emitter<ProfileTwentyeightState> emit, ) async  {  } 
 }
