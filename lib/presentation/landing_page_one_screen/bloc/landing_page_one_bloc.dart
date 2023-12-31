import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:yka_app/presentation/landing_page_one_screen/models/landing_page_one_model.dart';
part 'landing_page_one_event.dart';
part 'landing_page_one_state.dart';

/// A bloc that manages the state of a LandingPageOne according to the event that is dispatched to it.
class LandingPageOneBloc
    extends Bloc<LandingPageOneEvent, LandingPageOneState> {
  LandingPageOneBloc(LandingPageOneState initialState) : super(initialState) {
    on<LandingPageOneInitialEvent>(_onInitialize);
    on<ChangeCountryEvent>(_changeCountry);
  }

  _changeCountry(
    ChangeCountryEvent event,
    Emitter<LandingPageOneState> emit,
  ) {
    emit(state.copyWith(
      selectedCountry: event.value,
    ));
  }

  _onInitialize(
    LandingPageOneInitialEvent event,
    Emitter<LandingPageOneState> emit,
  ) async {
    emit(state.copyWith(
      phoneNumberController: TextEditingController(),
      cprNumberController: TextEditingController(),
    ));
  }
}
