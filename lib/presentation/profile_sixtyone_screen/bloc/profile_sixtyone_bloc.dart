import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofile9_item_model.dart';
import 'package:yka_app/presentation/profile_sixtyone_screen/models/profile_sixtyone_model.dart';
part 'profile_sixtyone_event.dart';
part 'profile_sixtyone_state.dart';

/// A bloc that manages the state of a ProfileSixtyone according to the event that is dispatched to it.
class ProfileSixtyoneBloc
    extends Bloc<ProfileSixtyoneEvent, ProfileSixtyoneState> {
  ProfileSixtyoneBloc(ProfileSixtyoneState initialState) : super(initialState) {
    on<ProfileSixtyoneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProfileSixtyoneInitialEvent event,
    Emitter<ProfileSixtyoneState> emit,
  ) async {
    emit(state.copyWith(
        profileSixtyoneModelObj: state.profileSixtyoneModelObj?.copyWith(
      userprofile9ItemList: fillUserprofile9ItemList(),
    )));
  }

  List<Userprofile9ItemModel> fillUserprofile9ItemList() {
    return [
      Userprofile9ItemModel(
          homeImage: ImageConstant.imgFrameRed800,
          homeText: "Home",
          editText: "Edit",
          deleteText: "Delete"),
      Userprofile9ItemModel(
          homeImage: ImageConstant.imgFrameRed800, homeText: "Home"),
      Userprofile9ItemModel(
          homeImage: ImageConstant.imgLinkedinRed80026x22, homeText: "Other")
    ];
  }
}
