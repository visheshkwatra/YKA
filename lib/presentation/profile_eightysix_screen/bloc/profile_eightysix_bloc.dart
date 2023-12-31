import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofile5_item_model.dart';
import 'package:yka_app/presentation/profile_eightysix_screen/models/profile_eightysix_model.dart';
part 'profile_eightysix_event.dart';
part 'profile_eightysix_state.dart';

/// A bloc that manages the state of a ProfileEightysix according to the event that is dispatched to it.
class ProfileEightysixBloc
    extends Bloc<ProfileEightysixEvent, ProfileEightysixState> {
  ProfileEightysixBloc(ProfileEightysixState initialState)
      : super(initialState) {
    on<ProfileEightysixInitialEvent>(_onInitialize);
  }

  List<Userprofile5ItemModel> fillUserprofile5ItemList() {
    return [
      Userprofile5ItemModel(
          miscServicesImage: ImageConstant.imgImage101,
          miscServicesText: "Misc\nServices"),
      Userprofile5ItemModel(
          miscServicesImage: ImageConstant.img7439518328551,
          miscServicesText: "Bodyshop Services"),
      Userprofile5ItemModel(miscServicesText: "Regular Service"),
      Userprofile5ItemModel(miscServicesText: "Intermediate Service"),
      Userprofile5ItemModel(miscServicesText: "Campaign Service"),
      Userprofile5ItemModel(miscServicesText: "Express Service"),
      Userprofile5ItemModel(miscServicesText: "Mechanical Repairs"),
      Userprofile5ItemModel(miscServicesText: "Warranty Repairs")
    ];
  }

  _onInitialize(
    ProfileEightysixInitialEvent event,
    Emitter<ProfileEightysixState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        profileEightysixModelObj: state.profileEightysixModelObj?.copyWith(
      userprofile5ItemList: fillUserprofile5ItemList(),
    )));
  }
}
