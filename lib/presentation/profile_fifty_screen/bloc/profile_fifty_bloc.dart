import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:yka_app/presentation/profile_fifty_screen/models/profile_fifty_model.dart';part 'profile_fifty_event.dart';part 'profile_fifty_state.dart';/// A bloc that manages the state of a ProfileFifty according to the event that is dispatched to it.
class ProfileFiftyBloc extends Bloc<ProfileFiftyEvent, ProfileFiftyState> {ProfileFiftyBloc(ProfileFiftyState initialState) : super(initialState) { on<ProfileFiftyInitialEvent>(_onInitialize); }

_onInitialize(ProfileFiftyInitialEvent event, Emitter<ProfileFiftyState> emit, ) async  { emit(state.copyWith(floatingTextFieldController: TextEditingController(), floatingTextFieldController1: TextEditingController(), floatingTextFieldController2: TextEditingController(), floatingTextFieldController3: TextEditingController())); } 
 }
