import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:yka_app/presentation/profile_twentynine_screen/models/profile_twentynine_model.dart';part 'profile_twentynine_event.dart';part 'profile_twentynine_state.dart';/// A bloc that manages the state of a ProfileTwentynine according to the event that is dispatched to it.
class ProfileTwentynineBloc extends Bloc<ProfileTwentynineEvent, ProfileTwentynineState> {ProfileTwentynineBloc(ProfileTwentynineState initialState) : super(initialState) { on<ProfileTwentynineInitialEvent>(_onInitialize); }

_onInitialize(ProfileTwentynineInitialEvent event, Emitter<ProfileTwentynineState> emit, ) async  {  } 
 }
