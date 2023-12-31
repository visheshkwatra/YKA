import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:yka_app/presentation/profile_ninetyone_screen/models/profile_ninetyone_model.dart';
part 'profile_ninetyone_event.dart';
part 'profile_ninetyone_state.dart';

/// A bloc that manages the state of a ProfileNinetyone according to the event that is dispatched to it.
class ProfileNinetyoneBloc
    extends Bloc<ProfileNinetyoneEvent, ProfileNinetyoneState> {
  ProfileNinetyoneBloc(ProfileNinetyoneState initialState)
      : super(initialState) {
    on<ProfileNinetyoneInitialEvent>(_onInitialize);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<ProfileNinetyoneState> emit,
  ) {
    emit(state.copyWith(
      iAgreeToTheTermsCheckBox: event.value,
    ));
  }

  _onInitialize(
    ProfileNinetyoneInitialEvent event,
    Emitter<ProfileNinetyoneState> emit,
  ) async {
    emit(state.copyWith(
      iAgreeToTheTermsCheckBox: false,
    ));
  }
}
