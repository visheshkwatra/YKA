import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:yka_app/presentation/profile_sixtynine_screen/models/profile_sixtynine_model.dart';
part 'profile_sixtynine_event.dart';
part 'profile_sixtynine_state.dart';

/// A bloc that manages the state of a ProfileSixtynine according to the event that is dispatched to it.
class ProfileSixtynineBloc
    extends Bloc<ProfileSixtynineEvent, ProfileSixtynineState> {
  ProfileSixtynineBloc(ProfileSixtynineState initialState)
      : super(initialState) {
    on<ProfileSixtynineInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProfileSixtynineInitialEvent event,
    Emitter<ProfileSixtynineState> emit,
  ) async {}
}
