import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:yka_app/presentation/landing_page_three_screen/models/landing_page_three_model.dart';
part 'landing_page_three_event.dart';
part 'landing_page_three_state.dart';

/// A bloc that manages the state of a LandingPageThree according to the event that is dispatched to it.
class LandingPageThreeBloc
    extends Bloc<LandingPageThreeEvent, LandingPageThreeState> {
  LandingPageThreeBloc(LandingPageThreeState initialState)
      : super(initialState) {
    on<LandingPageThreeInitialEvent>(_onInitialize);
    on<ChangeCountryEvent>(_changeCountry);
  }

  _changeCountry(
    ChangeCountryEvent event,
    Emitter<LandingPageThreeState> emit,
  ) {
    emit(state.copyWith(
      selectedCountry: event.value,
    ));
  }

  _onInitialize(
    LandingPageThreeInitialEvent event,
    Emitter<LandingPageThreeState> emit,
  ) async {
    emit(state.copyWith(
      phoneNumberController: TextEditingController(),
      cprNumberController: TextEditingController(),
    ));
  }
}
