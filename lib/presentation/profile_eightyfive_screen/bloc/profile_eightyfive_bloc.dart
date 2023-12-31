import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:yka_app/presentation/profile_eightyfive_screen/models/profile_eightyfive_model.dart';
part 'profile_eightyfive_event.dart';
part 'profile_eightyfive_state.dart';

/// A bloc that manages the state of a ProfileEightyfive according to the event that is dispatched to it.
class ProfileEightyfiveBloc
    extends Bloc<ProfileEightyfiveEvent, ProfileEightyfiveState> {
  ProfileEightyfiveBloc(ProfileEightyfiveState initialState)
      : super(initialState) {
    on<ProfileEightyfiveInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProfileEightyfiveInitialEvent event,
    Emitter<ProfileEightyfiveState> emit,
  ) async {}
}
