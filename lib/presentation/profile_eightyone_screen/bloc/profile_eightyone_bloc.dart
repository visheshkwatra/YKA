import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:yka_app/presentation/profile_eightyone_screen/models/profile_eightyone_model.dart';
part 'profile_eightyone_event.dart';
part 'profile_eightyone_state.dart';

/// A bloc that manages the state of a ProfileEightyone according to the event that is dispatched to it.
class ProfileEightyoneBloc
    extends Bloc<ProfileEightyoneEvent, ProfileEightyoneState> {
  ProfileEightyoneBloc(ProfileEightyoneState initialState)
      : super(initialState) {
    on<ProfileEightyoneInitialEvent>(_onInitialize);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<ProfileEightyoneState> emit,
  ) {
    emit(state.copyWith(
      iAgreeToTheTermsCheckBox: event.value,
    ));
  }

  _onInitialize(
    ProfileEightyoneInitialEvent event,
    Emitter<ProfileEightyoneState> emit,
  ) async {
    emit(state.copyWith(
      iAgreeToTheTermsCheckBox: false,
    ));
  }
}
