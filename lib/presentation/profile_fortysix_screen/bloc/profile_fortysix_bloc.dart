import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/cardetailslist2_item_model.dart';
import 'package:yka_app/presentation/profile_fortysix_screen/models/profile_fortysix_model.dart';
part 'profile_fortysix_event.dart';
part 'profile_fortysix_state.dart';

/// A bloc that manages the state of a ProfileFortysix according to the event that is dispatched to it.
class ProfileFortysixBloc
    extends Bloc<ProfileFortysixEvent, ProfileFortysixState> {
  ProfileFortysixBloc(ProfileFortysixState initialState) : super(initialState) {
    on<ProfileFortysixInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProfileFortysixInitialEvent event,
    Emitter<ProfileFortysixState> emit,
  ) async {
    emit(state.copyWith(
        profileFortysixModelObj: state.profileFortysixModelObj?.copyWith(
      cardetailslist2ItemList: fillCardetailslist2ItemList(),
    )));
  }

  List<Cardetailslist2ItemModel> fillCardetailslist2ItemList() {
    return [
      Cardetailslist2ItemModel(
          carName: "FORD",
          colorName: "Magnetic Blue",
          modelName: "Mustang Coupe",
          price: "BHD 500",
          ford: ImageConstant.imgImage5273108x291)
    ];
  }
}
