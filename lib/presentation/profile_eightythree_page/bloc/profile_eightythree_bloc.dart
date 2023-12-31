import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofile3_item_model.dart';
import 'package:yka_app/presentation/profile_eightythree_page/models/profile_eightythree_model.dart';
part 'profile_eightythree_event.dart';
part 'profile_eightythree_state.dart';

/// A bloc that manages the state of a ProfileEightythree according to the event that is dispatched to it.
class ProfileEightythreeBloc
    extends Bloc<ProfileEightythreeEvent, ProfileEightythreeState> {
  ProfileEightythreeBloc(ProfileEightythreeState initialState)
      : super(initialState) {
    on<ProfileEightythreeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProfileEightythreeInitialEvent event,
    Emitter<ProfileEightythreeState> emit,
  ) async {
    emit(state.copyWith(
        profileEightythreeModelObj: state.profileEightythreeModelObj?.copyWith(
      userprofile3ItemList: fillUserprofile3ItemList(),
    )));
  }

  List<Userprofile3ItemModel> fillUserprofile3ItemList() {
    return [
      Userprofile3ItemModel(
          image1: ImageConstant.imgRectangle1757,
          userImage: ImageConstant.imgUserTeal70041x37,
          text2: "OFF",
          text3: "YK Showroom",
          text4: "Dubai Sports City...",
          fi: ImageConstant.imgFi597177,
          text5: "Open",
          text6: "Closes 19:00")
    ];
  }
}
