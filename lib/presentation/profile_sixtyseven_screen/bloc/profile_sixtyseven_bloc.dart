import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:yka_app/presentation/profile_sixtyseven_screen/models/profile_sixtyseven_model.dart';
part 'profile_sixtyseven_event.dart';
part 'profile_sixtyseven_state.dart';

/// A bloc that manages the state of a ProfileSixtyseven according to the event that is dispatched to it.
class ProfileSixtysevenBloc
    extends Bloc<ProfileSixtysevenEvent, ProfileSixtysevenState> {
  ProfileSixtysevenBloc(ProfileSixtysevenState initialState)
      : super(initialState) {
    on<ProfileSixtysevenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProfileSixtysevenInitialEvent event,
    Emitter<ProfileSixtysevenState> emit,
  ) async {}
}
