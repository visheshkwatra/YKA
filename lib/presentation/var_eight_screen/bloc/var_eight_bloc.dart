import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/viewhierarchy1_item_model.dart';
import 'package:yka_app/presentation/var_eight_screen/models/var_eight_model.dart';
part 'var_eight_event.dart';
part 'var_eight_state.dart';

/// A bloc that manages the state of a VarEight according to the event that is dispatched to it.
class VarEightBloc extends Bloc<VarEightEvent, VarEightState> {
  VarEightBloc(VarEightState initialState) : super(initialState) {
    on<VarEightInitialEvent>(_onInitialize);
  }

  List<Viewhierarchy1ItemModel> fillViewhierarchy1ItemList() {
    return [
      Viewhierarchy1ItemModel(
          image1: ImageConstant.imgAirplane,
          image2: ImageConstant.imgAirplane,
          image3: ImageConstant.img7439518328551,
          text1: "Bodyshop\nService"),
      Viewhierarchy1ItemModel(text1: "Regular Service"),
      Viewhierarchy1ItemModel(text1: "Intermediate Service"),
      Viewhierarchy1ItemModel(text1: "Misc\nServices"),
      Viewhierarchy1ItemModel(text1: "Campaign Service"),
      Viewhierarchy1ItemModel(text1: "Express Service"),
      Viewhierarchy1ItemModel(text1: "Mechanical Repairs"),
      Viewhierarchy1ItemModel(text1: "Warranty Repairs")
    ];
  }

  _onInitialize(
    VarEightInitialEvent event,
    Emitter<VarEightState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        varEightModelObj: state.varEightModelObj?.copyWith(
      viewhierarchy1ItemList: fillViewhierarchy1ItemList(),
    )));
  }
}
