import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:yka_app/presentation/profile_sixtyfour_screen/models/profile_sixtyfour_model.dart';
part 'profile_sixtyfour_event.dart';
part 'profile_sixtyfour_state.dart';

/// A bloc that manages the state of a ProfileSixtyfour according to the event that is dispatched to it.
class ProfileSixtyfourBloc
    extends Bloc<ProfileSixtyfourEvent, ProfileSixtyfourState> {
  ProfileSixtyfourBloc(ProfileSixtyfourState initialState)
      : super(initialState) {
    on<ProfileSixtyfourInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProfileSixtyfourInitialEvent event,
    Emitter<ProfileSixtyfourState> emit,
  ) async {}
}
