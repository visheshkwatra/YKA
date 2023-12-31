import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:yka_app/presentation/profile_thirtyeight_screen/models/profile_thirtyeight_model.dart';
part 'profile_thirtyeight_event.dart';
part 'profile_thirtyeight_state.dart';

/// A bloc that manages the state of a ProfileThirtyeight according to the event that is dispatched to it.
class ProfileThirtyeightBloc
    extends Bloc<ProfileThirtyeightEvent, ProfileThirtyeightState> {
  ProfileThirtyeightBloc(ProfileThirtyeightState initialState)
      : super(initialState) {
    on<ProfileThirtyeightInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProfileThirtyeightInitialEvent event,
    Emitter<ProfileThirtyeightState> emit,
  ) async {}
}
