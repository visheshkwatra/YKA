import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofile_item_model.dart';
import 'package:yka_app/presentation/profile_thirtynine_bottomsheet/models/profile_thirtynine_model.dart';
part 'profile_thirtynine_event.dart';
part 'profile_thirtynine_state.dart';

/// A bloc that manages the state of a ProfileThirtynine according to the event that is dispatched to it.
class ProfileThirtynineBloc
    extends Bloc<ProfileThirtynineEvent, ProfileThirtynineState> {
  ProfileThirtynineBloc(ProfileThirtynineState initialState)
      : super(initialState) {
    on<ProfileThirtynineInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProfileThirtynineInitialEvent event,
    Emitter<ProfileThirtynineState> emit,
  ) async {
    emit(state.copyWith(
        profileThirtynineModelObj: state.profileThirtynineModelObj?.copyWith(
      userprofileItemList: fillUserprofileItemList(),
    )));
  }

  List<UserprofileItemModel> fillUserprofileItemList() {
    return [
      UserprofileItemModel(
          englishText: "English",
          welcomeText: "Welcome to YKA",
          englishImage: ImageConstant.imgRectangle9859),
      UserprofileItemModel(
          englishText: "عربي",
          welcomeText: "مرحبا بكم في YKA",
          englishImage: ImageConstant.imgRectangle34626266)
    ];
  }
}
