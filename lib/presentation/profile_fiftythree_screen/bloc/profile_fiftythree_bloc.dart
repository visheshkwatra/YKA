import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:yka_app/presentation/profile_fiftythree_screen/models/profile_fiftythree_model.dart';
part 'profile_fiftythree_event.dart';
part 'profile_fiftythree_state.dart';

/// A bloc that manages the state of a ProfileFiftythree according to the event that is dispatched to it.
class ProfileFiftythreeBloc
    extends Bloc<ProfileFiftythreeEvent, ProfileFiftythreeState> {
  ProfileFiftythreeBloc(ProfileFiftythreeState initialState)
      : super(initialState) {
    on<ProfileFiftythreeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProfileFiftythreeInitialEvent event,
    Emitter<ProfileFiftythreeState> emit,
  ) async {}
}
