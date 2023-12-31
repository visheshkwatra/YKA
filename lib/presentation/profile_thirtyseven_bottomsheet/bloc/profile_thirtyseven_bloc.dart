import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/widget_item_model.dart';
import 'package:yka_app/presentation/profile_thirtyseven_bottomsheet/models/profile_thirtyseven_model.dart';
part 'profile_thirtyseven_event.dart';
part 'profile_thirtyseven_state.dart';

/// A bloc that manages the state of a ProfileThirtyseven according to the event that is dispatched to it.
class ProfileThirtysevenBloc
    extends Bloc<ProfileThirtysevenEvent, ProfileThirtysevenState> {
  ProfileThirtysevenBloc(ProfileThirtysevenState initialState)
      : super(initialState) {
    on<ProfileThirtysevenInitialEvent>(_onInitialize);
    on<UpdateChipViewEvent>(_updateChipView);
  }

  _updateChipView(
    UpdateChipViewEvent event,
    Emitter<ProfileThirtysevenState> emit,
  ) {
    List<WidgetItemModel> newList = List<WidgetItemModel>.from(
        state.profileThirtysevenModelObj!.widgetItemList);
    newList[event.index] = newList[event.index].copyWith(
      isSelected: event.isSelected,
    );
    emit(state.copyWith(
        profileThirtysevenModelObj: state.profileThirtysevenModelObj
            ?.copyWith(widgetItemList: newList)));
  }

  List<WidgetItemModel> fillWidgetItemList() {
    return List.generate(3, (index) => WidgetItemModel());
  }

  _onInitialize(
    ProfileThirtysevenInitialEvent event,
    Emitter<ProfileThirtysevenState> emit,
  ) async {
    emit(state.copyWith(
      houseFlatBlockNoEditTextController: TextEditingController(),
      apartmentRoadAreaEditTextController: TextEditingController(),
      landmarkOptionalEditTextController: TextEditingController(),
      descriptionOptionalEditTextController: TextEditingController(),
    ));
    emit(state.copyWith(
        profileThirtysevenModelObj: state.profileThirtysevenModelObj?.copyWith(
      widgetItemList: fillWidgetItemList(),
    )));
  }
}
