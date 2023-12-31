import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:yka_app/presentation/profile_seventyfour_screen/models/profile_seventyfour_model.dart';
part 'profile_seventyfour_event.dart';
part 'profile_seventyfour_state.dart';

/// A bloc that manages the state of a ProfileSeventyfour according to the event that is dispatched to it.
class ProfileSeventyfourBloc
    extends Bloc<ProfileSeventyfourEvent, ProfileSeventyfourState> {
  ProfileSeventyfourBloc(ProfileSeventyfourState initialState)
      : super(initialState) {
    on<ProfileSeventyfourInitialEvent>(_onInitialize);
    on<ChangeCountryEvent>(_changeCountry);
  }

  _changeCountry(
    ChangeCountryEvent event,
    Emitter<ProfileSeventyfourState> emit,
  ) {
    emit(state.copyWith(
      selectedCountry: event.value,
    ));
  }

  _onInitialize(
    ProfileSeventyfourInitialEvent event,
    Emitter<ProfileSeventyfourState> emit,
  ) async {
    emit(state.copyWith(
      floatingTextFieldController: TextEditingController(),
      floatingTextFieldController1: TextEditingController(),
      phoneNumberController: TextEditingController(),
      floatingTextFieldController2: TextEditingController(),
    ));
  }
}
