import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:yka_app/presentation/profile_seventyone_screen/models/profile_seventyone_model.dart';
part 'profile_seventyone_event.dart';
part 'profile_seventyone_state.dart';

/// A bloc that manages the state of a ProfileSeventyone according to the event that is dispatched to it.
class ProfileSeventyoneBloc
    extends Bloc<ProfileSeventyoneEvent, ProfileSeventyoneState> {
  ProfileSeventyoneBloc(ProfileSeventyoneState initialState)
      : super(initialState) {
    on<ProfileSeventyoneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProfileSeventyoneInitialEvent event,
    Emitter<ProfileSeventyoneState> emit,
  ) async {}
}
