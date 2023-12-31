import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/cardetailssection_item_model.dart';
import 'package:yka_app/presentation/explore_mercedes_page/models/explore_mercedes_model.dart';
part 'explore_mercedes_event.dart';
part 'explore_mercedes_state.dart';

/// A bloc that manages the state of a ExploreMercedes according to the event that is dispatched to it.
class ExploreMercedesBloc
    extends Bloc<ExploreMercedesEvent, ExploreMercedesState> {
  ExploreMercedesBloc(ExploreMercedesState initialState) : super(initialState) {
    on<ExploreMercedesInitialEvent>(_onInitialize);
    on<ChangeDropDownEvent>(_changeDropDown);
    on<ChangeDropDown1Event>(_changeDropDown1);
    on<ChangeDropDown2Event>(_changeDropDown2);
  }

  _changeDropDown(
    ChangeDropDownEvent event,
    Emitter<ExploreMercedesState> emit,
  ) {
    emit(state.copyWith(
      selectedDropDownValue: event.value,
    ));
  }

  _changeDropDown1(
    ChangeDropDown1Event event,
    Emitter<ExploreMercedesState> emit,
  ) {
    emit(state.copyWith(
      selectedDropDownValue1: event.value,
    ));
  }

  _changeDropDown2(
    ChangeDropDown2Event event,
    Emitter<ExploreMercedesState> emit,
  ) {
    emit(state.copyWith(
      selectedDropDownValue2: event.value,
    ));
  }

  List<SelectionPopupModel> fillDropdownItemList() {
    return [
      SelectionPopupModel(
        id: 1,
        title: "Item One",
        isSelected: true,
      ),
      SelectionPopupModel(
        id: 2,
        title: "Item Two",
      ),
      SelectionPopupModel(
        id: 3,
        title: "Item Three",
      )
    ];
  }

  List<SelectionPopupModel> fillDropdownItemList1() {
    return [
      SelectionPopupModel(
        id: 1,
        title: "Item One",
        isSelected: true,
      ),
      SelectionPopupModel(
        id: 2,
        title: "Item Two",
      ),
      SelectionPopupModel(
        id: 3,
        title: "Item Three",
      )
    ];
  }

  List<SelectionPopupModel> fillDropdownItemList2() {
    return [
      SelectionPopupModel(
        id: 1,
        title: "Item One",
        isSelected: true,
      ),
      SelectionPopupModel(
        id: 2,
        title: "Item Two",
      ),
      SelectionPopupModel(
        id: 3,
        title: "Item Three",
      )
    ];
  }

  List<CardetailssectionItemModel> fillCardetailssectionItemList() {
    return [
      CardetailssectionItemModel(
          carBrand: "INFINITI",
          carColor: "Midnight Black",
          carModel: "Q50 Sensory",
          carPrice: "BHD 500",
          carLogo: ImageConstant.imgImage42145x317)
    ];
  }

  _onInitialize(
    ExploreMercedesInitialEvent event,
    Emitter<ExploreMercedesState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        exploreMercedesModelObj: state.exploreMercedesModelObj?.copyWith(
      dropdownItemList: fillDropdownItemList(),
      dropdownItemList1: fillDropdownItemList1(),
      dropdownItemList2: fillDropdownItemList2(),
      cardetailssectionItemList: fillCardetailssectionItemList(),
    )));
  }
}
