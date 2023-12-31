import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:yka_app/presentation/profile_seventyfive_screen/models/profile_seventyfive_model.dart';
part 'profile_seventyfive_event.dart';
part 'profile_seventyfive_state.dart';

/// A bloc that manages the state of a ProfileSeventyfive according to the event that is dispatched to it.
class ProfileSeventyfiveBloc
    extends Bloc<ProfileSeventyfiveEvent, ProfileSeventyfiveState> {
  ProfileSeventyfiveBloc(ProfileSeventyfiveState initialState)
      : super(initialState) {
    on<ProfileSeventyfiveInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProfileSeventyfiveInitialEvent event,
    Emitter<ProfileSeventyfiveState> emit,
  ) async {}
}
