import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:yka_app/presentation/profile_thirteen_screen/models/profile_thirteen_model.dart';part 'profile_thirteen_event.dart';part 'profile_thirteen_state.dart';/// A bloc that manages the state of a ProfileThirteen according to the event that is dispatched to it.
class ProfileThirteenBloc extends Bloc<ProfileThirteenEvent, ProfileThirteenState> {ProfileThirteenBloc(ProfileThirteenState initialState) : super(initialState) { on<ProfileThirteenInitialEvent>(_onInitialize); }

_onInitialize(ProfileThirteenInitialEvent event, Emitter<ProfileThirteenState> emit, ) async  {  } 
 }
