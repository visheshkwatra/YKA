import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:yka_app/presentation/profile_eighteen_bottomsheet/models/profile_eighteen_model.dart';
part 'profile_eighteen_event.dart';
part 'profile_eighteen_state.dart';

/// A bloc that manages the state of a ProfileEighteen according to the event that is dispatched to it.
class ProfileEighteenBloc
    extends Bloc<ProfileEighteenEvent, ProfileEighteenState> {
  ProfileEighteenBloc(ProfileEighteenState initialState) : super(initialState) {
    on<ProfileEighteenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProfileEighteenInitialEvent event,
    Emitter<ProfileEighteenState> emit,
  ) async {}
}
