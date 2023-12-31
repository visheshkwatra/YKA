import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofilelist_item_model.dart';
import 'package:yka_app/presentation/profile_thirtyfour_screen/models/profile_thirtyfour_model.dart';
part 'profile_thirtyfour_event.dart';
part 'profile_thirtyfour_state.dart';

/// A bloc that manages the state of a ProfileThirtyfour according to the event that is dispatched to it.
class ProfileThirtyfourBloc
    extends Bloc<ProfileThirtyfourEvent, ProfileThirtyfourState> {
  ProfileThirtyfourBloc(ProfileThirtyfourState initialState)
      : super(initialState) {
    on<ProfileThirtyfourInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProfileThirtyfourInitialEvent event,
    Emitter<ProfileThirtyfourState> emit,
  ) async {
    emit(state.copyWith(
        profileThirtyfourModelObj: state.profileThirtyfourModelObj?.copyWith(
      userprofilelistItemList: fillUserprofilelistItemList(),
    )));
  }

  List<UserprofilelistItemModel> fillUserprofilelistItemList() {
    return [
      UserprofilelistItemModel(
          dynamicText1: "7653-TNJ",
          dynamicText2: "Mustang Coupe",
          dynamicIconButton: ImageConstant.imgFrame29RedA400,
          dynamicText3: "FORD",
          dynamicImage: ImageConstant.imgImage5273108x291),
      UserprofilelistItemModel(
          dynamicText1: "7653-TNJ",
          dynamicText2: "Q50 Luxe AWD",
          dynamicIconButton: ImageConstant.imgFrame29RedA40034x34,
          dynamicText3: "INFINITI",
          dynamicImage: ImageConstant.imgImage89)
    ];
  }
}
