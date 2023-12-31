import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:yka_app/presentation/profile_eightyseven_screen/models/profile_eightyseven_model.dart';
part 'profile_eightyseven_event.dart';
part 'profile_eightyseven_state.dart';

/// A bloc that manages the state of a ProfileEightyseven according to the event that is dispatched to it.
class ProfileEightysevenBloc
    extends Bloc<ProfileEightysevenEvent, ProfileEightysevenState> {
  ProfileEightysevenBloc(ProfileEightysevenState initialState)
      : super(initialState) {
    on<ProfileEightysevenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProfileEightysevenInitialEvent event,
    Emitter<ProfileEightysevenState> emit,
  ) async {}
}
