import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:yka_app/presentation/profile_forty_bottomsheet/models/profile_forty_model.dart';
part 'profile_forty_event.dart';
part 'profile_forty_state.dart';

/// A bloc that manages the state of a ProfileForty according to the event that is dispatched to it.
class ProfileFortyBloc extends Bloc<ProfileFortyEvent, ProfileFortyState> {
  ProfileFortyBloc(ProfileFortyState initialState) : super(initialState) {
    on<ProfileFortyInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProfileFortyInitialEvent event,
    Emitter<ProfileFortyState> emit,
  ) async {}
}
