import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:yka_app/presentation/profile_seventysix_screen/models/profile_seventysix_model.dart';
part 'profile_seventysix_event.dart';
part 'profile_seventysix_state.dart';

/// A bloc that manages the state of a ProfileSeventysix according to the event that is dispatched to it.
class ProfileSeventysixBloc
    extends Bloc<ProfileSeventysixEvent, ProfileSeventysixState> {
  ProfileSeventysixBloc(ProfileSeventysixState initialState)
      : super(initialState) {
    on<ProfileSeventysixInitialEvent>(_onInitialize);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<ProfileSeventysixState> emit,
  ) {
    emit(state.copyWith(
      checkBox: event.value,
    ));
  }

  _onInitialize(
    ProfileSeventysixInitialEvent event,
    Emitter<ProfileSeventysixState> emit,
  ) async {
    emit(state.copyWith(
      checkBox: false,
    ));
  }
}
