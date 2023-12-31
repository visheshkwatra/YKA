import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:yka_app/presentation/profile_sixtysix_screen/models/profile_sixtysix_model.dart';
part 'profile_sixtysix_event.dart';
part 'profile_sixtysix_state.dart';

/// A bloc that manages the state of a ProfileSixtysix according to the event that is dispatched to it.
class ProfileSixtysixBloc
    extends Bloc<ProfileSixtysixEvent, ProfileSixtysixState> {
  ProfileSixtysixBloc(ProfileSixtysixState initialState) : super(initialState) {
    on<ProfileSixtysixInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProfileSixtysixInitialEvent event,
    Emitter<ProfileSixtysixState> emit,
  ) async {}
}
