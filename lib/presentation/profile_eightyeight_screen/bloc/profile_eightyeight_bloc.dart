import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:yka_app/presentation/profile_eightyeight_screen/models/profile_eightyeight_model.dart';
part 'profile_eightyeight_event.dart';
part 'profile_eightyeight_state.dart';

/// A bloc that manages the state of a ProfileEightyeight according to the event that is dispatched to it.
class ProfileEightyeightBloc
    extends Bloc<ProfileEightyeightEvent, ProfileEightyeightState> {
  ProfileEightyeightBloc(ProfileEightyeightState initialState)
      : super(initialState) {
    on<ProfileEightyeightInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProfileEightyeightInitialEvent event,
    Emitter<ProfileEightyeightState> emit,
  ) async {}
}
