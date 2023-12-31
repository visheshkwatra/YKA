import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:yka_app/presentation/profile_seventy_screen/models/profile_seventy_model.dart';
part 'profile_seventy_event.dart';
part 'profile_seventy_state.dart';

/// A bloc that manages the state of a ProfileSeventy according to the event that is dispatched to it.
class ProfileSeventyBloc
    extends Bloc<ProfileSeventyEvent, ProfileSeventyState> {
  ProfileSeventyBloc(ProfileSeventyState initialState) : super(initialState) {
    on<ProfileSeventyInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProfileSeventyInitialEvent event,
    Emitter<ProfileSeventyState> emit,
  ) async {}
}
