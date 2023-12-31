import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:yka_app/presentation/profile_one_screen/models/profile_one_model.dart';
part 'profile_one_event.dart';
part 'profile_one_state.dart';

/// A bloc that manages the state of a ProfileOne according to the event that is dispatched to it.
class ProfileOneBloc extends Bloc<ProfileOneEvent, ProfileOneState> {
  ProfileOneBloc(ProfileOneState initialState) : super(initialState) {
    on<ProfileOneInitialEvent>(_onInitialize);
    on<ChangeCountryEvent>(_changeCountry);
  }

  _changeCountry(
    ChangeCountryEvent event,
    Emitter<ProfileOneState> emit,
  ) {
    emit(state.copyWith(
      selectedCountry: event.value,
    ));
  }

  _onInitialize(
    ProfileOneInitialEvent event,
    Emitter<ProfileOneState> emit,
  ) async {
    emit(state.copyWith(
      phoneNumberController: TextEditingController(),
    ));
  }
}
