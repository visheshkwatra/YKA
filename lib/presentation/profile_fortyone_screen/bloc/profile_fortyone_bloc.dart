import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:yka_app/presentation/profile_fortyone_screen/models/profile_fortyone_model.dart';
part 'profile_fortyone_event.dart';
part 'profile_fortyone_state.dart';

/// A bloc that manages the state of a ProfileFortyone according to the event that is dispatched to it.
class ProfileFortyoneBloc
    extends Bloc<ProfileFortyoneEvent, ProfileFortyoneState> {
  ProfileFortyoneBloc(ProfileFortyoneState initialState) : super(initialState) {
    on<ProfileFortyoneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProfileFortyoneInitialEvent event,
    Emitter<ProfileFortyoneState> emit,
  ) async {}
}
