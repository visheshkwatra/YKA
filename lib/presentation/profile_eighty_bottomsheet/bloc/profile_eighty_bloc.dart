import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:yka_app/presentation/profile_eighty_bottomsheet/models/profile_eighty_model.dart';
part 'profile_eighty_event.dart';
part 'profile_eighty_state.dart';

/// A bloc that manages the state of a ProfileEighty according to the event that is dispatched to it.
class ProfileEightyBloc extends Bloc<ProfileEightyEvent, ProfileEightyState> {
  ProfileEightyBloc(ProfileEightyState initialState) : super(initialState) {
    on<ProfileEightyInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProfileEightyInitialEvent event,
    Emitter<ProfileEightyState> emit,
  ) async {}
}
