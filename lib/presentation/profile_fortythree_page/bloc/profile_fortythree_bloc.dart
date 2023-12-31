import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/bookingstext_item_model.dart';
import 'package:yka_app/presentation/profile_fortythree_page/models/profile_fortythree_model.dart';
part 'profile_fortythree_event.dart';
part 'profile_fortythree_state.dart';

/// A bloc that manages the state of a ProfileFortythree according to the event that is dispatched to it.
class ProfileFortythreeBloc
    extends Bloc<ProfileFortythreeEvent, ProfileFortythreeState> {
  ProfileFortythreeBloc(ProfileFortythreeState initialState)
      : super(initialState) {
    on<ProfileFortythreeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProfileFortythreeInitialEvent event,
    Emitter<ProfileFortythreeState> emit,
  ) async {
    emit(state.copyWith(
        profileFortythreeModelObj: state.profileFortythreeModelObj?.copyWith(
      bookingstextItemList: fillBookingstextItemList(),
    )));
  }

  List<BookingstextItemModel> fillBookingstextItemList() {
    return [
      BookingstextItemModel(
          bookingsImage: ImageConstant.imgList2, bookingsText: "Bookings"),
      BookingstextItemModel(
          bookingsImage: ImageConstant.imgFi67994, bookingsText: "Vehicles"),
      BookingstextItemModel(
          bookingsImage: ImageConstant.imgLocation, bookingsText: "Addresses"),
      BookingstextItemModel(
          bookingsImage: ImageConstant.imgFi3059446Primary,
          bookingsText: "Contact Us"),
      BookingstextItemModel(
          bookingsImage: ImageConstant.imgFramePrimary26x26,
          bookingsText: "Favourites"),
      BookingstextItemModel(
          bookingsImage: ImageConstant.imgUserSettingGear,
          bookingsText: "Settings")
    ];
  }
}
