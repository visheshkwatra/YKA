import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:yka_app/presentation/profile_two_screen/models/profile_two_model.dart';
part 'profile_two_event.dart';
part 'profile_two_state.dart';

/// A bloc that manages the state of a ProfileTwo according to the event that is dispatched to it.
class ProfileTwoBloc extends Bloc<ProfileTwoEvent, ProfileTwoState> {
  ProfileTwoBloc(ProfileTwoState initialState) : super(initialState) {
    on<ProfileTwoInitialEvent>(_onInitialize);
    on<ChangeCountryEvent>(_changeCountry);
  }

  _changeCountry(
    ChangeCountryEvent event,
    Emitter<ProfileTwoState> emit,
  ) {
    emit(state.copyWith(
      selectedCountry: event.value,
    ));
  }

  _onInitialize(
    ProfileTwoInitialEvent event,
    Emitter<ProfileTwoState> emit,
  ) async {
    emit(state.copyWith(
      phoneNumberController: TextEditingController(),
    ));
  }
}
