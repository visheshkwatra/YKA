import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:yka_app/presentation/profile_fortyfour_screen/models/profile_fortyfour_model.dart';
part 'profile_fortyfour_event.dart';
part 'profile_fortyfour_state.dart';

/// A bloc that manages the state of a ProfileFortyfour according to the event that is dispatched to it.
class ProfileFortyfourBloc
    extends Bloc<ProfileFortyfourEvent, ProfileFortyfourState> {
  ProfileFortyfourBloc(ProfileFortyfourState initialState)
      : super(initialState) {
    on<ProfileFortyfourInitialEvent>(_onInitialize);
    on<ChangeCountryEvent>(_changeCountry);
  }

  _changeCountry(
    ChangeCountryEvent event,
    Emitter<ProfileFortyfourState> emit,
  ) {
    emit(state.copyWith(
      selectedCountry: event.value,
    ));
  }

  _onInitialize(
    ProfileFortyfourInitialEvent event,
    Emitter<ProfileFortyfourState> emit,
  ) async {
    emit(state.copyWith(
      phoneNumberController: TextEditingController(),
      cprLabelController: TextEditingController(),
    ));
  }
}
