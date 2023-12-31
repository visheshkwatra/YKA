import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:yka_app/presentation/profile_eightynine_dialog/models/profile_eightynine_model.dart';
part 'profile_eightynine_event.dart';
part 'profile_eightynine_state.dart';

/// A bloc that manages the state of a ProfileEightynine according to the event that is dispatched to it.
class ProfileEightynineBloc
    extends Bloc<ProfileEightynineEvent, ProfileEightynineState> {
  ProfileEightynineBloc(ProfileEightynineState initialState)
      : super(initialState) {
    on<ProfileEightynineInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProfileEightynineInitialEvent event,
    Emitter<ProfileEightynineState> emit,
  ) async {}
}
