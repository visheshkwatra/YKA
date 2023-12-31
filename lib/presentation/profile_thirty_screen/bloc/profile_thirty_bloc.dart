import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:country_pickers/country.dart';import 'package:country_pickers/utils/utils.dart';import 'package:yka_app/presentation/profile_thirty_screen/models/profile_thirty_model.dart';part 'profile_thirty_event.dart';part 'profile_thirty_state.dart';/// A bloc that manages the state of a ProfileThirty according to the event that is dispatched to it.
class ProfileThirtyBloc extends Bloc<ProfileThirtyEvent, ProfileThirtyState> {ProfileThirtyBloc(ProfileThirtyState initialState) : super(initialState) { on<ProfileThirtyInitialEvent>(_onInitialize); on<ChangeCountryEvent>(_changeCountry); }

_changeCountry(ChangeCountryEvent event, Emitter<ProfileThirtyState> emit, ) { emit(state.copyWith(selectedCountry: event.value)); } 
_onInitialize(ProfileThirtyInitialEvent event, Emitter<ProfileThirtyState> emit, ) async  { emit(state.copyWith(phoneNumberController: TextEditingController(), cprController: TextEditingController())); } 
 }
