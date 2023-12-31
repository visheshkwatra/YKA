import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:yka_app/presentation/profile_thirtythree_screen/models/profile_thirtythree_model.dart';
part 'profile_thirtythree_event.dart';
part 'profile_thirtythree_state.dart';

/// A bloc that manages the state of a ProfileThirtythree according to the event that is dispatched to it.
class ProfileThirtythreeBloc
    extends Bloc<ProfileThirtythreeEvent, ProfileThirtythreeState> {
  ProfileThirtythreeBloc(ProfileThirtythreeState initialState)
      : super(initialState) {
    on<ProfileThirtythreeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProfileThirtythreeInitialEvent event,
    Emitter<ProfileThirtythreeState> emit,
  ) async {}
}
