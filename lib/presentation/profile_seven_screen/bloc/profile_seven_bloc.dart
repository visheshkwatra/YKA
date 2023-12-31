import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:country_pickers/country.dart';import 'package:country_pickers/utils/utils.dart';import 'package:yka_app/presentation/profile_seven_screen/models/profile_seven_model.dart';part 'profile_seven_event.dart';part 'profile_seven_state.dart';/// A bloc that manages the state of a ProfileSeven according to the event that is dispatched to it.
class ProfileSevenBloc extends Bloc<ProfileSevenEvent, ProfileSevenState> {ProfileSevenBloc(ProfileSevenState initialState) : super(initialState) { on<ProfileSevenInitialEvent>(_onInitialize); on<ChangeCountryEvent>(_changeCountry); }

_changeCountry(ChangeCountryEvent event, Emitter<ProfileSevenState> emit, ) { emit(state.copyWith(selectedCountry: event.value)); } 
_onInitialize(ProfileSevenInitialEvent event, Emitter<ProfileSevenState> emit, ) async  { emit(state.copyWith(phoneNumberController: TextEditingController())); } 
 }
