import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:yka_app/presentation/landing_page_two_screen/models/landing_page_two_model.dart';
part 'landing_page_two_event.dart';
part 'landing_page_two_state.dart';

/// A bloc that manages the state of a LandingPageTwo according to the event that is dispatched to it.
class LandingPageTwoBloc
    extends Bloc<LandingPageTwoEvent, LandingPageTwoState> {
  LandingPageTwoBloc(LandingPageTwoState initialState) : super(initialState) {
    on<LandingPageTwoInitialEvent>(_onInitialize);
    on<ChangeCountryEvent>(_changeCountry);
  }

  _changeCountry(
    ChangeCountryEvent event,
    Emitter<LandingPageTwoState> emit,
  ) {
    emit(state.copyWith(
      selectedCountry: event.value,
    ));
  }

  _onInitialize(
    LandingPageTwoInitialEvent event,
    Emitter<LandingPageTwoState> emit,
  ) async {
    emit(state.copyWith(
      phoneNumberController: TextEditingController(),
      cprNumberController: TextEditingController(),
    ));
  }
}
