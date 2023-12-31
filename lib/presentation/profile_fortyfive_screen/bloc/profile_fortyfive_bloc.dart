import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:yka_app/presentation/profile_fortyfive_screen/models/profile_fortyfive_model.dart';
part 'profile_fortyfive_event.dart';
part 'profile_fortyfive_state.dart';

/// A bloc that manages the state of a ProfileFortyfive according to the event that is dispatched to it.
class ProfileFortyfiveBloc
    extends Bloc<ProfileFortyfiveEvent, ProfileFortyfiveState> {
  ProfileFortyfiveBloc(ProfileFortyfiveState initialState)
      : super(initialState) {
    on<ProfileFortyfiveInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProfileFortyfiveInitialEvent event,
    Emitter<ProfileFortyfiveState> emit,
  ) async {}
}
