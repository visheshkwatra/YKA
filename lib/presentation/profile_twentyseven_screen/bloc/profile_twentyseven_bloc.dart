import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:yka_app/presentation/profile_twentyseven_screen/models/profile_twentyseven_model.dart';
part 'profile_twentyseven_event.dart';
part 'profile_twentyseven_state.dart';

/// A bloc that manages the state of a ProfileTwentyseven according to the event that is dispatched to it.
class ProfileTwentysevenBloc
    extends Bloc<ProfileTwentysevenEvent, ProfileTwentysevenState> {
  ProfileTwentysevenBloc(ProfileTwentysevenState initialState)
      : super(initialState) {
    on<ProfileTwentysevenInitialEvent>(_onInitialize);
    on<ChangeCountryEvent>(_changeCountry);
  }

  _changeCountry(
    ChangeCountryEvent event,
    Emitter<ProfileTwentysevenState> emit,
  ) {
    emit(state.copyWith(
      selectedCountry: event.value,
    ));
  }

  _onInitialize(
    ProfileTwentysevenInitialEvent event,
    Emitter<ProfileTwentysevenState> emit,
  ) async {
    emit(state.copyWith(
      phoneNumberController: TextEditingController(),
      cprLabelController: TextEditingController(),
    ));
  }
}
