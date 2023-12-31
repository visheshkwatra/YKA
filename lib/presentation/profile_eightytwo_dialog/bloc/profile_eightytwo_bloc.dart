import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:yka_app/presentation/profile_eightytwo_dialog/models/profile_eightytwo_model.dart';
part 'profile_eightytwo_event.dart';
part 'profile_eightytwo_state.dart';

/// A bloc that manages the state of a ProfileEightytwo according to the event that is dispatched to it.
class ProfileEightytwoBloc
    extends Bloc<ProfileEightytwoEvent, ProfileEightytwoState> {
  ProfileEightytwoBloc(ProfileEightytwoState initialState)
      : super(initialState) {
    on<ProfileEightytwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProfileEightytwoInitialEvent event,
    Emitter<ProfileEightytwoState> emit,
  ) async {}
}
