import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:yka_app/presentation/profile_sixteen_screen/models/profile_sixteen_model.dart';
part 'profile_sixteen_event.dart';
part 'profile_sixteen_state.dart';

/// A bloc that manages the state of a ProfileSixteen according to the event that is dispatched to it.
class ProfileSixteenBloc
    extends Bloc<ProfileSixteenEvent, ProfileSixteenState> {
  ProfileSixteenBloc(ProfileSixteenState initialState) : super(initialState) {
    on<ProfileSixteenInitialEvent>(_onInitialize);
    on<ChangeCountryEvent>(_changeCountry);
  }

  _changeCountry(
    ChangeCountryEvent event,
    Emitter<ProfileSixteenState> emit,
  ) {
    emit(state.copyWith(
      selectedCountry: event.value,
    ));
  }

  _onInitialize(
    ProfileSixteenInitialEvent event,
    Emitter<ProfileSixteenState> emit,
  ) async {
    emit(state.copyWith(
      phoneNumberController: TextEditingController(),
      cprLabelController: TextEditingController(),
    ));
  }
}
