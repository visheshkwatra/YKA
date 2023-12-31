import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/profilefortynine_item_model.dart';
import 'package:yka_app/presentation/profile_fortynine_screen/models/profile_fortynine_model.dart';
part 'profile_fortynine_event.dart';
part 'profile_fortynine_state.dart';

/// A bloc that manages the state of a ProfileFortynine according to the event that is dispatched to it.
class ProfileFortynineBloc
    extends Bloc<ProfileFortynineEvent, ProfileFortynineState> {
  ProfileFortynineBloc(ProfileFortynineState initialState)
      : super(initialState) {
    on<ProfileFortynineInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProfileFortynineInitialEvent event,
    Emitter<ProfileFortynineState> emit,
  ) async {
    emit(state.copyWith(
        profileFortynineModelObj: state.profileFortynineModelObj?.copyWith(
      profilefortynineItemList: fillProfilefortynineItemList(),
    )));
  }

  List<ProfilefortynineItemModel> fillProfilefortynineItemList() {
    return [
      ProfilefortynineItemModel(
          reservedOnDate: "Reserved on 12th Oct 2023",
          carModel: "Mustang Coupe",
          carBrand: "FORD",
          carImage: ImageConstant.imgImage5273121x291,
          reservationAmount: "Reserved @ BHD 500"),
      ProfilefortynineItemModel(
          reservedOnDate: "Reserved on 12th Oct 2023",
          carModel: "2018 GTR",
          carBrand: "NISSAN",
          carImage: ImageConstant.imgImage42143x300,
          reservationAmount: "Reserved @ BHD 500")
    ];
  }
}
