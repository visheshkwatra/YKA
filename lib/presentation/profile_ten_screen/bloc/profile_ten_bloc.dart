import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:yka_app/presentation/profile_ten_screen/models/profile_ten_model.dart';part 'profile_ten_event.dart';part 'profile_ten_state.dart';/// A bloc that manages the state of a ProfileTen according to the event that is dispatched to it.
class ProfileTenBloc extends Bloc<ProfileTenEvent, ProfileTenState> {ProfileTenBloc(ProfileTenState initialState) : super(initialState) { on<ProfileTenInitialEvent>(_onInitialize); }

_onInitialize(ProfileTenInitialEvent event, Emitter<ProfileTenState> emit, ) async  {  } 
 }
