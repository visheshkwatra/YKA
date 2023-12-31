import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:yka_app/presentation/profile_twentytwo_screen/models/profile_twentytwo_model.dart';part 'profile_twentytwo_event.dart';part 'profile_twentytwo_state.dart';/// A bloc that manages the state of a ProfileTwentytwo according to the event that is dispatched to it.
class ProfileTwentytwoBloc extends Bloc<ProfileTwentytwoEvent, ProfileTwentytwoState> {ProfileTwentytwoBloc(ProfileTwentytwoState initialState) : super(initialState) { on<ProfileTwentytwoInitialEvent>(_onInitialize); }

_onInitialize(ProfileTwentytwoInitialEvent event, Emitter<ProfileTwentytwoState> emit, ) async  {  } 
 }
