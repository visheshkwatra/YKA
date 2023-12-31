import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:yka_app/presentation/profile_seventytwo_screen/models/profile_seventytwo_model.dart';part 'profile_seventytwo_event.dart';part 'profile_seventytwo_state.dart';/// A bloc that manages the state of a ProfileSeventytwo according to the event that is dispatched to it.
class ProfileSeventytwoBloc extends Bloc<ProfileSeventytwoEvent, ProfileSeventytwoState> {ProfileSeventytwoBloc(ProfileSeventytwoState initialState) : super(initialState) { on<ProfileSeventytwoInitialEvent>(_onInitialize); }

_onInitialize(ProfileSeventytwoInitialEvent event, Emitter<ProfileSeventytwoState> emit, ) async  {  } 
 }
