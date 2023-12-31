import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:yka_app/presentation/profile_fiftytwo_bottomsheet/models/profile_fiftytwo_model.dart';
part 'profile_fiftytwo_event.dart';
part 'profile_fiftytwo_state.dart';

/// A bloc that manages the state of a ProfileFiftytwo according to the event that is dispatched to it.
class ProfileFiftytwoBloc
    extends Bloc<ProfileFiftytwoEvent, ProfileFiftytwoState> {
  ProfileFiftytwoBloc(ProfileFiftytwoState initialState) : super(initialState) {
    on<ProfileFiftytwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProfileFiftytwoInitialEvent event,
    Emitter<ProfileFiftytwoState> emit,
  ) async {}
}
