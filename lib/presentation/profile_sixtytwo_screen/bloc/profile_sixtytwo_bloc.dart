import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:yka_app/presentation/profile_sixtytwo_screen/models/profile_sixtytwo_model.dart';
part 'profile_sixtytwo_event.dart';
part 'profile_sixtytwo_state.dart';

/// A bloc that manages the state of a ProfileSixtytwo according to the event that is dispatched to it.
class ProfileSixtytwoBloc
    extends Bloc<ProfileSixtytwoEvent, ProfileSixtytwoState> {
  ProfileSixtytwoBloc(ProfileSixtytwoState initialState) : super(initialState) {
    on<ProfileSixtytwoInitialEvent>(_onInitialize);
    on<ChangeCountryEvent>(_changeCountry);
  }

  _changeCountry(
    ChangeCountryEvent event,
    Emitter<ProfileSixtytwoState> emit,
  ) {
    emit(state.copyWith(
      selectedCountry: event.value,
    ));
  }

  _onInitialize(
    ProfileSixtytwoInitialEvent event,
    Emitter<ProfileSixtytwoState> emit,
  ) async {
    emit(state.copyWith(
      floatingTextFieldController: TextEditingController(),
      floatingTextFieldController1: TextEditingController(),
      phoneNumberController: TextEditingController(),
      floatingTextFieldController2: TextEditingController(),
    ));
  }
}
