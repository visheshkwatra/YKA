import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:yka_app/presentation/profile_twentyfour_bottomsheet/models/profile_twentyfour_model.dart';
part 'profile_twentyfour_event.dart';
part 'profile_twentyfour_state.dart';

/// A bloc that manages the state of a ProfileTwentyfour according to the event that is dispatched to it.
class ProfileTwentyfourBloc
    extends Bloc<ProfileTwentyfourEvent, ProfileTwentyfourState> {
  ProfileTwentyfourBloc(ProfileTwentyfourState initialState)
      : super(initialState) {
    on<ProfileTwentyfourInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProfileTwentyfourInitialEvent event,
    Emitter<ProfileTwentyfourState> emit,
  ) async {}
}
