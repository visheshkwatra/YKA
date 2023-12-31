import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:yka_app/presentation/profile_twentyfive_screen/models/profile_twentyfive_model.dart';part 'profile_twentyfive_event.dart';part 'profile_twentyfive_state.dart';/// A bloc that manages the state of a ProfileTwentyfive according to the event that is dispatched to it.
class ProfileTwentyfiveBloc extends Bloc<ProfileTwentyfiveEvent, ProfileTwentyfiveState> {ProfileTwentyfiveBloc(ProfileTwentyfiveState initialState) : super(initialState) { on<ProfileTwentyfiveInitialEvent>(_onInitialize); }

_onInitialize(ProfileTwentyfiveInitialEvent event, Emitter<ProfileTwentyfiveState> emit, ) async  {  } 
 }
