import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:yka_app/presentation/profile_thirtysix_screen/models/profile_thirtysix_model.dart';
part 'profile_thirtysix_event.dart';
part 'profile_thirtysix_state.dart';

/// A bloc that manages the state of a ProfileThirtysix according to the event that is dispatched to it.
class ProfileThirtysixBloc
    extends Bloc<ProfileThirtysixEvent, ProfileThirtysixState> {
  ProfileThirtysixBloc(ProfileThirtysixState initialState)
      : super(initialState) {
    on<ProfileThirtysixInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProfileThirtysixInitialEvent event,
    Emitter<ProfileThirtysixState> emit,
  ) async {}
}
