import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofile6_item_model.dart';
import 'package:yka_app/presentation/profile_fiftysix_screen/models/profile_fiftysix_model.dart';
part 'profile_fiftysix_event.dart';
part 'profile_fiftysix_state.dart';

/// A bloc that manages the state of a ProfileFiftysix according to the event that is dispatched to it.
class ProfileFiftysixBloc
    extends Bloc<ProfileFiftysixEvent, ProfileFiftysixState> {
  ProfileFiftysixBloc(ProfileFiftysixState initialState) : super(initialState) {
    on<ProfileFiftysixInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProfileFiftysixInitialEvent event,
    Emitter<ProfileFiftysixState> emit,
  ) async {
    emit(state.copyWith(
        profileFiftysixModelObj: state.profileFiftysixModelObj?.copyWith(
      userprofile6ItemList: fillUserprofile6ItemList(),
    )));
  }

  List<Userprofile6ItemModel> fillUserprofile6ItemList() {
    return [
      Userprofile6ItemModel(
          dynamicText1: "7653-TNJ",
          dynamicText2: "Mustang Coupe",
          dynamicImage: ImageConstant.imgFrame29RedA400,
          dynamicText3: "FORD",
          dynamicImage2: ImageConstant.imgImage5273108x291),
      Userprofile6ItemModel(
          dynamicText1: "7653-TNJ",
          dynamicText2: "Q50 Luxe AWD",
          dynamicImage: ImageConstant.imgFrame29RedA40034x34,
          dynamicText3: "INFINITI",
          dynamicImage2: ImageConstant.imgImage89)
    ];
  }
}
