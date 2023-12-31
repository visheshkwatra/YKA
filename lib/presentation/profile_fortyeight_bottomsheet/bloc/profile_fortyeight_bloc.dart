import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:yka_app/presentation/profile_fortyeight_bottomsheet/models/profile_fortyeight_model.dart';
part 'profile_fortyeight_event.dart';
part 'profile_fortyeight_state.dart';

/// A bloc that manages the state of a ProfileFortyeight according to the event that is dispatched to it.
class ProfileFortyeightBloc
    extends Bloc<ProfileFortyeightEvent, ProfileFortyeightState> {
  ProfileFortyeightBloc(ProfileFortyeightState initialState)
      : super(initialState) {
    on<ProfileFortyeightInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProfileFortyeightInitialEvent event,
    Emitter<ProfileFortyeightState> emit,
  ) async {}
}
