import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/viewhierarchy2_item_model.dart';
import 'package:yka_app/presentation/var_fortyone_screen/models/var_fortyone_model.dart';
part 'var_fortyone_event.dart';
part 'var_fortyone_state.dart';

/// A bloc that manages the state of a VarFortyone according to the event that is dispatched to it.
class VarFortyoneBloc extends Bloc<VarFortyoneEvent, VarFortyoneState> {
  VarFortyoneBloc(VarFortyoneState initialState) : super(initialState) {
    on<VarFortyoneInitialEvent>(_onInitialize);
  }

  List<Viewhierarchy2ItemModel> fillViewhierarchy2ItemList() {
    return [
      Viewhierarchy2ItemModel(
          image1: ImageConstant.imgAirplane,
          image2: ImageConstant.imgAirplane,
          image3: ImageConstant.img7439518328551,
          text1: "Bodyshop\nService"),
      Viewhierarchy2ItemModel(text1: "Regular Service"),
      Viewhierarchy2ItemModel(text1: "Intermediate Service"),
      Viewhierarchy2ItemModel(text1: "Misc\nServices"),
      Viewhierarchy2ItemModel(text1: "Campaign Service"),
      Viewhierarchy2ItemModel(text1: "Express Service"),
      Viewhierarchy2ItemModel(text1: "Mechanical Repairs"),
      Viewhierarchy2ItemModel(text1: "Warranty Repairs")
    ];
  }

  _onInitialize(
    VarFortyoneInitialEvent event,
    Emitter<VarFortyoneState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        varFortyoneModelObj: state.varFortyoneModelObj?.copyWith(
      viewhierarchy2ItemList: fillViewhierarchy2ItemList(),
    )));
  }
}
