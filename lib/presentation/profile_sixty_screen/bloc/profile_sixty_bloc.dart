import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/cardetailslist4_item_model.dart';
import 'package:yka_app/presentation/profile_sixty_screen/models/profile_sixty_model.dart';
part 'profile_sixty_event.dart';
part 'profile_sixty_state.dart';

/// A bloc that manages the state of a ProfileSixty according to the event that is dispatched to it.
class ProfileSixtyBloc extends Bloc<ProfileSixtyEvent, ProfileSixtyState> {
  ProfileSixtyBloc(ProfileSixtyState initialState) : super(initialState) {
    on<ProfileSixtyInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProfileSixtyInitialEvent event,
    Emitter<ProfileSixtyState> emit,
  ) async {
    emit(state.copyWith(
        profileSixtyModelObj: state.profileSixtyModelObj?.copyWith(
      cardetailslist4ItemList: fillCardetailslist4ItemList(),
    )));
  }

  List<Cardetailslist4ItemModel> fillCardetailslist4ItemList() {
    return [
      Cardetailslist4ItemModel(
          carName: "FORD",
          colorName: "Magnetic Blue",
          modelName: "Mustang Coupe",
          priceText: "BHD 500",
          brandImage: ImageConstant.imgImage5273108x291)
    ];
  }
}
