import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:yka_app/presentation/profile_seventythree_screen/models/profile_seventythree_model.dart';
part 'profile_seventythree_event.dart';
part 'profile_seventythree_state.dart';

/// A bloc that manages the state of a ProfileSeventythree according to the event that is dispatched to it.
class ProfileSeventythreeBloc
    extends Bloc<ProfileSeventythreeEvent, ProfileSeventythreeState> {
  ProfileSeventythreeBloc(ProfileSeventythreeState initialState)
      : super(initialState) {
    on<ProfileSeventythreeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProfileSeventythreeInitialEvent event,
    Emitter<ProfileSeventythreeState> emit,
  ) async {}
}
