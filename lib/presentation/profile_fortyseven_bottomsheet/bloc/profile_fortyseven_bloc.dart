import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/widget3_item_model.dart';
import 'package:yka_app/presentation/profile_fortyseven_bottomsheet/models/profile_fortyseven_model.dart';
part 'profile_fortyseven_event.dart';
part 'profile_fortyseven_state.dart';

/// A bloc that manages the state of a ProfileFortyseven according to the event that is dispatched to it.
class ProfileFortysevenBloc
    extends Bloc<ProfileFortysevenEvent, ProfileFortysevenState> {
  ProfileFortysevenBloc(ProfileFortysevenState initialState)
      : super(initialState) {
    on<ProfileFortysevenInitialEvent>(_onInitialize);
    on<UpdateChipViewEvent>(_updateChipView);
  }

  _updateChipView(
    UpdateChipViewEvent event,
    Emitter<ProfileFortysevenState> emit,
  ) {
    List<Widget3ItemModel> newList = List<Widget3ItemModel>.from(
        state.profileFortysevenModelObj!.widget3ItemList);
    newList[event.index] = newList[event.index].copyWith(
      isSelected: event.isSelected,
    );
    emit(state.copyWith(
        profileFortysevenModelObj: state.profileFortysevenModelObj
            ?.copyWith(widget3ItemList: newList)));
  }

  List<Widget3ItemModel> fillWidget3ItemList() {
    return List.generate(3, (index) => Widget3ItemModel());
  }

  _onInitialize(
    ProfileFortysevenInitialEvent event,
    Emitter<ProfileFortysevenState> emit,
  ) async {
    emit(state.copyWith(
      houseFlatBlockNoEditTextController: TextEditingController(),
      apartmentRoadAreaEditTextController: TextEditingController(),
      landmarkOptionalEditTextController: TextEditingController(),
      descriptionOptionalEditTextController: TextEditingController(),
    ));
    emit(state.copyWith(
        profileFortysevenModelObj: state.profileFortysevenModelObj?.copyWith(
      widget3ItemList: fillWidget3ItemList(),
    )));
  }
}
