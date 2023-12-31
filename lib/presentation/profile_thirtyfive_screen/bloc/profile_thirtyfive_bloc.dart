import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:yka_app/presentation/profile_thirtyfive_screen/models/profile_thirtyfive_model.dart';
part 'profile_thirtyfive_event.dart';
part 'profile_thirtyfive_state.dart';

/// A bloc that manages the state of a ProfileThirtyfive according to the event that is dispatched to it.
class ProfileThirtyfiveBloc
    extends Bloc<ProfileThirtyfiveEvent, ProfileThirtyfiveState> {
  ProfileThirtyfiveBloc(ProfileThirtyfiveState initialState)
      : super(initialState) {
    on<ProfileThirtyfiveInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProfileThirtyfiveInitialEvent event,
    Emitter<ProfileThirtyfiveState> emit,
  ) async {}
}
