import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:yka_app/presentation/profile_sixtyeight_bottomsheet/models/profile_sixtyeight_model.dart';
part 'profile_sixtyeight_event.dart';
part 'profile_sixtyeight_state.dart';

/// A bloc that manages the state of a ProfileSixtyeight according to the event that is dispatched to it.
class ProfileSixtyeightBloc
    extends Bloc<ProfileSixtyeightEvent, ProfileSixtyeightState> {
  ProfileSixtyeightBloc(ProfileSixtyeightState initialState)
      : super(initialState) {
    on<ProfileSixtyeightInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProfileSixtyeightInitialEvent event,
    Emitter<ProfileSixtyeightState> emit,
  ) async {}
}
