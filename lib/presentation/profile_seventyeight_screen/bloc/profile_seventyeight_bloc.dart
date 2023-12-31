import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofilelist1_item_model.dart';
import 'package:yka_app/presentation/profile_seventyeight_screen/models/profile_seventyeight_model.dart';
part 'profile_seventyeight_event.dart';
part 'profile_seventyeight_state.dart';

/// A bloc that manages the state of a ProfileSeventyeight according to the event that is dispatched to it.
class ProfileSeventyeightBloc
    extends Bloc<ProfileSeventyeightEvent, ProfileSeventyeightState> {
  ProfileSeventyeightBloc(ProfileSeventyeightState initialState)
      : super(initialState) {
    on<ProfileSeventyeightInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProfileSeventyeightInitialEvent event,
    Emitter<ProfileSeventyeightState> emit,
  ) async {
    emit(state.copyWith(
        profileSeventyeightModelObj:
            state.profileSeventyeightModelObj?.copyWith(
      userprofilelist1ItemList: fillUserprofilelist1ItemList(),
    )));
  }

  List<Userprofilelist1ItemModel> fillUserprofilelist1ItemList() {
    return [
      Userprofilelist1ItemModel(
          userImage: ImageConstant.imgUserGray10006,
          userImage1: ImageConstant.imgUserTeal700,
          userStatus: "OFF")
    ];
  }
}
