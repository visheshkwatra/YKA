import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofile4_item_model.dart';
import 'package:yka_app/presentation/profile_fiftyone_screen/models/profile_fiftyone_model.dart';
part 'profile_fiftyone_event.dart';
part 'profile_fiftyone_state.dart';

/// A bloc that manages the state of a ProfileFiftyone according to the event that is dispatched to it.
class ProfileFiftyoneBloc
    extends Bloc<ProfileFiftyoneEvent, ProfileFiftyoneState> {
  ProfileFiftyoneBloc(ProfileFiftyoneState initialState) : super(initialState) {
    on<ProfileFiftyoneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProfileFiftyoneInitialEvent event,
    Emitter<ProfileFiftyoneState> emit,
  ) async {
    emit(state.copyWith(
        profileFiftyoneModelObj: state.profileFiftyoneModelObj?.copyWith(
      userprofile4ItemList: fillUserprofile4ItemList(),
    )));
  }

  List<Userprofile4ItemModel> fillUserprofile4ItemList() {
    return [
      Userprofile4ItemModel(
          ford: "FORD",
          carImage: ImageConstant.imgImage5273108x291,
          reservationDate: "Reserved on 12th Oct 2023",
          carModel: "Mustang Coupe",
          reservationAmount: "Reserved @ BHD 500")
    ];
  }
}
