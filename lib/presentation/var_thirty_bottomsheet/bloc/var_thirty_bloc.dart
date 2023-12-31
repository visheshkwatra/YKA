import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofile10_item_model.dart';
import 'package:yka_app/presentation/var_thirty_bottomsheet/models/var_thirty_model.dart';
part 'var_thirty_event.dart';
part 'var_thirty_state.dart';

/// A bloc that manages the state of a VarThirty according to the event that is dispatched to it.
class VarThirtyBloc extends Bloc<VarThirtyEvent, VarThirtyState> {
  VarThirtyBloc(VarThirtyState initialState) : super(initialState) {
    on<VarThirtyInitialEvent>(_onInitialize);
  }

  _onInitialize(
    VarThirtyInitialEvent event,
    Emitter<VarThirtyState> emit,
  ) async {
    emit(state.copyWith(
        varThirtyModelObj: state.varThirtyModelObj?.copyWith(
      userprofile10ItemList: fillUserprofile10ItemList(),
    )));
  }

  List<Userprofile10ItemModel> fillUserprofile10ItemList() {
    return [
      Userprofile10ItemModel(
          englishText: "English",
          welcomeText: "Welcome to YKA",
          englishImage: ImageConstant.imgRectangle9859),
      Userprofile10ItemModel(
          englishText: "عربي",
          welcomeText: "مرحبا بكم في YKA",
          englishImage: ImageConstant.imgRectangle34626266)
    ];
  }
}
