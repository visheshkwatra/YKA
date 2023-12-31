import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:yka_app/presentation/profile_fiftyfive_screen/models/profile_fiftyfive_model.dart';part 'profile_fiftyfive_event.dart';part 'profile_fiftyfive_state.dart';/// A bloc that manages the state of a ProfileFiftyfive according to the event that is dispatched to it.
class ProfileFiftyfiveBloc extends Bloc<ProfileFiftyfiveEvent, ProfileFiftyfiveState> {ProfileFiftyfiveBloc(ProfileFiftyfiveState initialState) : super(initialState) { on<ProfileFiftyfiveInitialEvent>(_onInitialize); }

_onInitialize(ProfileFiftyfiveInitialEvent event, Emitter<ProfileFiftyfiveState> emit, ) async  { emit(state.copyWith(floatingTextFieldController: TextEditingController(), floatingTextFieldController1: TextEditingController(), floatingTextFieldController2: TextEditingController(), floatingTextFieldController3: TextEditingController())); } 
 }
