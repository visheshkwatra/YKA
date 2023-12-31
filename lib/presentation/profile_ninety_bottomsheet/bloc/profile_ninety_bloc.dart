import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofile8_item_model.dart';
import 'package:yka_app/presentation/profile_ninety_bottomsheet/models/profile_ninety_model.dart';
part 'profile_ninety_event.dart';
part 'profile_ninety_state.dart';

/// A bloc that manages the state of a ProfileNinety according to the event that is dispatched to it.
class ProfileNinetyBloc extends Bloc<ProfileNinetyEvent, ProfileNinetyState> {
  ProfileNinetyBloc(ProfileNinetyState initialState) : super(initialState) {
    on<ProfileNinetyInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProfileNinetyInitialEvent event,
    Emitter<ProfileNinetyState> emit,
  ) async {
    emit(state.copyWith(
        profileNinetyModelObj: state.profileNinetyModelObj?.copyWith(
      userprofile8ItemList: fillUserprofile8ItemList(),
    )));
  }

  List<Userprofile8ItemModel> fillUserprofile8ItemList() {
    return [
      Userprofile8ItemModel(
          englishText: "English",
          welcomeText: "Welcome to YKA",
          englishImage: ImageConstant.imgRectangle9859),
      Userprofile8ItemModel(
          englishText: "عربي",
          welcomeText: "مرحبا بكم في YKA",
          englishImage: ImageConstant.imgRectangle34626266)
    ];
  }
}
