import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:yka_app/presentation/profile_sixtythree_screen/models/profile_sixtythree_model.dart';
part 'profile_sixtythree_event.dart';
part 'profile_sixtythree_state.dart';

/// A bloc that manages the state of a ProfileSixtythree according to the event that is dispatched to it.
class ProfileSixtythreeBloc
    extends Bloc<ProfileSixtythreeEvent, ProfileSixtythreeState> {
  ProfileSixtythreeBloc(ProfileSixtythreeState initialState)
      : super(initialState) {
    on<ProfileSixtythreeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProfileSixtythreeInitialEvent event,
    Emitter<ProfileSixtythreeState> emit,
  ) async {}
}
