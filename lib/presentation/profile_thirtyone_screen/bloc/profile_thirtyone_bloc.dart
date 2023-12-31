import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:yka_app/presentation/profile_thirtyone_screen/models/profile_thirtyone_model.dart';part 'profile_thirtyone_event.dart';part 'profile_thirtyone_state.dart';/// A bloc that manages the state of a ProfileThirtyone according to the event that is dispatched to it.
class ProfileThirtyoneBloc extends Bloc<ProfileThirtyoneEvent, ProfileThirtyoneState> {ProfileThirtyoneBloc(ProfileThirtyoneState initialState) : super(initialState) { on<ProfileThirtyoneInitialEvent>(_onInitialize); }

_onInitialize(ProfileThirtyoneInitialEvent event, Emitter<ProfileThirtyoneState> emit, ) async  {  } 
 }
