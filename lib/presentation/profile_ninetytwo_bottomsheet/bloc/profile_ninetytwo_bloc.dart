import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/widget5_item_model.dart';
import 'package:yka_app/presentation/profile_ninetytwo_bottomsheet/models/profile_ninetytwo_model.dart';
part 'profile_ninetytwo_event.dart';
part 'profile_ninetytwo_state.dart';

/// A bloc that manages the state of a ProfileNinetytwo according to the event that is dispatched to it.
class ProfileNinetytwoBloc
    extends Bloc<ProfileNinetytwoEvent, ProfileNinetytwoState> {
  ProfileNinetytwoBloc(ProfileNinetytwoState initialState)
      : super(initialState) {
    on<ProfileNinetytwoInitialEvent>(_onInitialize);
    on<UpdateChipViewEvent>(_updateChipView);
  }

  _updateChipView(
    UpdateChipViewEvent event,
    Emitter<ProfileNinetytwoState> emit,
  ) {
    List<Widget5ItemModel> newList = List<Widget5ItemModel>.from(
        state.profileNinetytwoModelObj!.widget5ItemList);
    newList[event.index] = newList[event.index].copyWith(
      isSelected: event.isSelected,
    );
    emit(state.copyWith(
        profileNinetytwoModelObj: state.profileNinetytwoModelObj
            ?.copyWith(widget5ItemList: newList)));
  }

  List<Widget5ItemModel> fillWidget5ItemList() {
    return List.generate(3, (index) => Widget5ItemModel());
  }

  _onInitialize(
    ProfileNinetytwoInitialEvent event,
    Emitter<ProfileNinetytwoState> emit,
  ) async {
    emit(state.copyWith(
      houseFlatBlockNoEditTextController: TextEditingController(),
      apartmentRoadAreaEditTextController: TextEditingController(),
      landmarkEditTextController: TextEditingController(),
      descriptionEditTextController: TextEditingController(),
    ));
    emit(state.copyWith(
        profileNinetytwoModelObj: state.profileNinetytwoModelObj?.copyWith(
      widget5ItemList: fillWidget5ItemList(),
    )));
  }
}
