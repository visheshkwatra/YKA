import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:yka_app/presentation/profile_twelve_screen/models/profile_twelve_model.dart';part 'profile_twelve_event.dart';part 'profile_twelve_state.dart';/// A bloc that manages the state of a ProfileTwelve according to the event that is dispatched to it.
class ProfileTwelveBloc extends Bloc<ProfileTwelveEvent, ProfileTwelveState> {ProfileTwelveBloc(ProfileTwelveState initialState) : super(initialState) { on<ProfileTwelveInitialEvent>(_onInitialize); }

_onInitialize(ProfileTwelveInitialEvent event, Emitter<ProfileTwelveState> emit, ) async  {  } 
 }
