import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:yka_app/presentation/profile_fiftyfour_screen/models/profile_fiftyfour_model.dart';
part 'profile_fiftyfour_event.dart';
part 'profile_fiftyfour_state.dart';

/// A bloc that manages the state of a ProfileFiftyfour according to the event that is dispatched to it.
class ProfileFiftyfourBloc
    extends Bloc<ProfileFiftyfourEvent, ProfileFiftyfourState> {
  ProfileFiftyfourBloc(ProfileFiftyfourState initialState)
      : super(initialState) {
    on<ProfileFiftyfourInitialEvent>(_onInitialize);
    on<ChangeSwitchEvent>(_changeSwitch);
  }

  _changeSwitch(
    ChangeSwitchEvent event,
    Emitter<ProfileFiftyfourState> emit,
  ) {
    emit(state.copyWith(
      isSelectedSwitch: event.value,
    ));
  }

  _onInitialize(
    ProfileFiftyfourInitialEvent event,
    Emitter<ProfileFiftyfourState> emit,
  ) async {
    emit(state.copyWith(
      isSelectedSwitch: false,
    ));
  }
}
