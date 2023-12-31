import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:yka_app/presentation/profile_sixtyfive_bottomsheet/models/profile_sixtyfive_model.dart';
part 'profile_sixtyfive_event.dart';
part 'profile_sixtyfive_state.dart';

/// A bloc that manages the state of a ProfileSixtyfive according to the event that is dispatched to it.
class ProfileSixtyfiveBloc
    extends Bloc<ProfileSixtyfiveEvent, ProfileSixtyfiveState> {
  ProfileSixtyfiveBloc(ProfileSixtyfiveState initialState)
      : super(initialState) {
    on<ProfileSixtyfiveInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProfileSixtyfiveInitialEvent event,
    Emitter<ProfileSixtyfiveState> emit,
  ) async {}
}
