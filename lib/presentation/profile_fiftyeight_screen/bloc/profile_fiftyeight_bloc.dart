import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:yka_app/presentation/profile_fiftyeight_screen/models/profile_fiftyeight_model.dart';
part 'profile_fiftyeight_event.dart';
part 'profile_fiftyeight_state.dart';

/// A bloc that manages the state of a ProfileFiftyeight according to the event that is dispatched to it.
class ProfileFiftyeightBloc
    extends Bloc<ProfileFiftyeightEvent, ProfileFiftyeightState> {
  ProfileFiftyeightBloc(ProfileFiftyeightState initialState)
      : super(initialState) {
    on<ProfileFiftyeightInitialEvent>(_onInitialize);
    on<ChangeSwitchEvent>(_changeSwitch);
  }

  _changeSwitch(
    ChangeSwitchEvent event,
    Emitter<ProfileFiftyeightState> emit,
  ) {
    emit(state.copyWith(
      isSelectedSwitch: event.value,
    ));
  }

  _onInitialize(
    ProfileFiftyeightInitialEvent event,
    Emitter<ProfileFiftyeightState> emit,
  ) async {
    emit(state.copyWith(
      isSelectedSwitch: false,
    ));
  }
}
