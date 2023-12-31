import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:country_pickers/country.dart';import 'package:country_pickers/utils/utils.dart';import 'package:yka_app/presentation/profile_fifteen_screen/models/profile_fifteen_model.dart';part 'profile_fifteen_event.dart';part 'profile_fifteen_state.dart';/// A bloc that manages the state of a ProfileFifteen according to the event that is dispatched to it.
class ProfileFifteenBloc extends Bloc<ProfileFifteenEvent, ProfileFifteenState> {ProfileFifteenBloc(ProfileFifteenState initialState) : super(initialState) { on<ProfileFifteenInitialEvent>(_onInitialize); on<ChangeCountryEvent>(_changeCountry); }

_changeCountry(ChangeCountryEvent event, Emitter<ProfileFifteenState> emit, ) { emit(state.copyWith(selectedCountry: event.value)); } 
_onInitialize(ProfileFifteenInitialEvent event, Emitter<ProfileFifteenState> emit, ) async  { emit(state.copyWith(phoneNumberController: TextEditingController())); } 
 }
