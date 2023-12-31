import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:yka_app/presentation/profile_thirtytwo_dialog/models/profile_thirtytwo_model.dart';
part 'profile_thirtytwo_event.dart';
part 'profile_thirtytwo_state.dart';

/// A bloc that manages the state of a ProfileThirtytwo according to the event that is dispatched to it.
class ProfileThirtytwoBloc
    extends Bloc<ProfileThirtytwoEvent, ProfileThirtytwoState> {
  ProfileThirtytwoBloc(ProfileThirtytwoState initialState)
      : super(initialState) {
    on<ProfileThirtytwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProfileThirtytwoInitialEvent event,
    Emitter<ProfileThirtytwoState> emit,
  ) async {}
}
