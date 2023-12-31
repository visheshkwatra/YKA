import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:yka_app/presentation/profile_seventyseven_dialog/models/profile_seventyseven_model.dart';
part 'profile_seventyseven_event.dart';
part 'profile_seventyseven_state.dart';

/// A bloc that manages the state of a ProfileSeventyseven according to the event that is dispatched to it.
class ProfileSeventysevenBloc
    extends Bloc<ProfileSeventysevenEvent, ProfileSeventysevenState> {
  ProfileSeventysevenBloc(ProfileSeventysevenState initialState)
      : super(initialState) {
    on<ProfileSeventysevenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProfileSeventysevenInitialEvent event,
    Emitter<ProfileSeventysevenState> emit,
  ) async {}
}
