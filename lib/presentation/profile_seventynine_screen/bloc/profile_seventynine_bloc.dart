import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:yka_app/presentation/profile_seventynine_screen/models/profile_seventynine_model.dart';
part 'profile_seventynine_event.dart';
part 'profile_seventynine_state.dart';

/// A bloc that manages the state of a ProfileSeventynine according to the event that is dispatched to it.
class ProfileSeventynineBloc
    extends Bloc<ProfileSeventynineEvent, ProfileSeventynineState> {
  ProfileSeventynineBloc(ProfileSeventynineState initialState)
      : super(initialState) {
    on<ProfileSeventynineInitialEvent>(_onInitialize);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<ProfileSeventynineState> emit,
  ) {
    emit(state.copyWith(
      iAgreeToTheTermsCheckBox: event.value,
    ));
  }

  _onInitialize(
    ProfileSeventynineInitialEvent event,
    Emitter<ProfileSeventynineState> emit,
  ) async {
    emit(state.copyWith(
      entercouponcodeController: TextEditingController(),
      iAgreeToTheTermsCheckBox: false,
    ));
  }
}
