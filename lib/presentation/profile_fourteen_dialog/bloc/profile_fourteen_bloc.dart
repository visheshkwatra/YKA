import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:yka_app/presentation/profile_fourteen_dialog/models/profile_fourteen_model.dart';
part 'profile_fourteen_event.dart';
part 'profile_fourteen_state.dart';

/// A bloc that manages the state of a ProfileFourteen according to the event that is dispatched to it.
class ProfileFourteenBloc
    extends Bloc<ProfileFourteenEvent, ProfileFourteenState> {
  ProfileFourteenBloc(ProfileFourteenState initialState) : super(initialState) {
    on<ProfileFourteenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProfileFourteenInitialEvent event,
    Emitter<ProfileFourteenState> emit,
  ) async {}
}
