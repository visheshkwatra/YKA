import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofile7_item_model.dart';
import 'package:yka_app/presentation/profile_fiftyseven_screen/models/profile_fiftyseven_model.dart';
part 'profile_fiftyseven_event.dart';
part 'profile_fiftyseven_state.dart';

/// A bloc that manages the state of a ProfileFiftyseven according to the event that is dispatched to it.
class ProfileFiftysevenBloc
    extends Bloc<ProfileFiftysevenEvent, ProfileFiftysevenState> {
  ProfileFiftysevenBloc(ProfileFiftysevenState initialState)
      : super(initialState) {
    on<ProfileFiftysevenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProfileFiftysevenInitialEvent event,
    Emitter<ProfileFiftysevenState> emit,
  ) async {
    emit(state.copyWith(
        profileFiftysevenModelObj: state.profileFiftysevenModelObj?.copyWith(
      userprofile7ItemList: fillUserprofile7ItemList(),
    )));
  }

  List<Userprofile7ItemModel> fillUserprofile7ItemList() {
    return [
      Userprofile7ItemModel(
          homeImage: ImageConstant.imgFrameRed800,
          homeText: "Home",
          editText: "Edit",
          deleteText: "Delete"),
      Userprofile7ItemModel(
          homeImage: ImageConstant.imgFrameRed800, homeText: "Home"),
      Userprofile7ItemModel(
          homeImage: ImageConstant.imgLinkedinRed80026x22, homeText: "Other")
    ];
  }
}
