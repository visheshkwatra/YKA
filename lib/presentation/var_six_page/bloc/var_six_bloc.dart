import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/viewhierarchy_item_model.dart';
import 'package:yka_app/presentation/var_six_page/models/var_six_model.dart';
part 'var_six_event.dart';
part 'var_six_state.dart';

/// A bloc that manages the state of a VarSix according to the event that is dispatched to it.
class VarSixBloc extends Bloc<VarSixEvent, VarSixState> {
  VarSixBloc(VarSixState initialState) : super(initialState) {
    on<VarSixInitialEvent>(_onInitialize);
  }

  List<ViewhierarchyItemModel> fillViewhierarchyItemList() {
    return [
      ViewhierarchyItemModel(
          image1: ImageConstant.imgAirplane,
          image2: ImageConstant.imgAirplane,
          image3: ImageConstant.img7439518328551,
          text1: "Bodyshop\nService"),
      ViewhierarchyItemModel(text1: "Regular Service"),
      ViewhierarchyItemModel(text1: "Intermediate Service"),
      ViewhierarchyItemModel(text1: "Misc\nServices"),
      ViewhierarchyItemModel(text1: "Campaign Service"),
      ViewhierarchyItemModel(text1: "Express Service"),
      ViewhierarchyItemModel(text1: "Mechanical Repairs"),
      ViewhierarchyItemModel(text1: "Warranty Repairs")
    ];
  }

  _onInitialize(
    VarSixInitialEvent event,
    Emitter<VarSixState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        varSixModelObj: state.varSixModelObj?.copyWith(
      viewhierarchyItemList: fillViewhierarchyItemList(),
    )));
  }
}
