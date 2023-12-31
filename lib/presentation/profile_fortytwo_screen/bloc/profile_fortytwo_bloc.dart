import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:yka_app/presentation/profile_fortytwo_screen/models/profile_fortytwo_model.dart';
part 'profile_fortytwo_event.dart';
part 'profile_fortytwo_state.dart';

/// A bloc that manages the state of a ProfileFortytwo according to the event that is dispatched to it.
class ProfileFortytwoBloc
    extends Bloc<ProfileFortytwoEvent, ProfileFortytwoState> {
  ProfileFortytwoBloc(ProfileFortytwoState initialState) : super(initialState) {
    on<ProfileFortytwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProfileFortytwoInitialEvent event,
    Emitter<ProfileFortytwoState> emit,
  ) async {}
}
