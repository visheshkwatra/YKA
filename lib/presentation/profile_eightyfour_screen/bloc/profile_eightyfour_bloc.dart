import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofilelist2_item_model.dart';
import 'package:yka_app/presentation/profile_eightyfour_screen/models/profile_eightyfour_model.dart';
part 'profile_eightyfour_event.dart';
part 'profile_eightyfour_state.dart';

/// A bloc that manages the state of a ProfileEightyfour according to the event that is dispatched to it.
class ProfileEightyfourBloc
    extends Bloc<ProfileEightyfourEvent, ProfileEightyfourState> {
  ProfileEightyfourBloc(ProfileEightyfourState initialState)
      : super(initialState) {
    on<ProfileEightyfourInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProfileEightyfourInitialEvent event,
    Emitter<ProfileEightyfourState> emit,
  ) async {
    emit(state.copyWith(
        profileEightyfourModelObj: state.profileEightyfourModelObj?.copyWith(
      userprofilelist2ItemList: fillUserprofilelist2ItemList(),
    )));
  }

  List<Userprofilelist2ItemModel> fillUserprofilelist2ItemList() {
    return [
      Userprofilelist2ItemModel(
          homeImage: ImageConstant.imgFrameRed800,
          homeText: "Home",
          editText: "Edit",
          deleteText: "Delete"),
      Userprofilelist2ItemModel(
          homeImage: ImageConstant.imgFrameBlueGray20001, homeText: "Home"),
      Userprofilelist2ItemModel(
          homeImage: ImageConstant.imgLinkedinBlueGray20001, homeText: "Other")
    ];
  }
}
