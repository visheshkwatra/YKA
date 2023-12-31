import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/bookingstext1_item_model.dart';
import 'package:yka_app/presentation/profile_fiftynine_screen/models/profile_fiftynine_model.dart';
part 'profile_fiftynine_event.dart';
part 'profile_fiftynine_state.dart';

/// A bloc that manages the state of a ProfileFiftynine according to the event that is dispatched to it.
class ProfileFiftynineBloc
    extends Bloc<ProfileFiftynineEvent, ProfileFiftynineState> {
  ProfileFiftynineBloc(ProfileFiftynineState initialState)
      : super(initialState) {
    on<ProfileFiftynineInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProfileFiftynineInitialEvent event,
    Emitter<ProfileFiftynineState> emit,
  ) async {
    emit(state.copyWith(
        profileFiftynineModelObj: state.profileFiftynineModelObj?.copyWith(
      bookingstext1ItemList: fillBookingstext1ItemList(),
    )));
  }

  List<Bookingstext1ItemModel> fillBookingstext1ItemList() {
    return [
      Bookingstext1ItemModel(
          bookingsImage: ImageConstant.imgList2, bookingsText: "Bookings"),
      Bookingstext1ItemModel(
          bookingsImage: ImageConstant.imgFi67994, bookingsText: "Vehicles"),
      Bookingstext1ItemModel(
          bookingsImage: ImageConstant.imgLocation, bookingsText: "Addresses"),
      Bookingstext1ItemModel(
          bookingsImage: ImageConstant.imgFi3059446Primary,
          bookingsText: "Contact Us"),
      Bookingstext1ItemModel(
          bookingsImage: ImageConstant.imgFramePrimary26x26,
          bookingsText: "Favourites"),
      Bookingstext1ItemModel(
          bookingsImage: ImageConstant.imgUserSettingGear,
          bookingsText: "Settings")
    ];
  }
}
