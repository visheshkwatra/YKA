import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/viewhierarchysection_item_model.dart';
import 'package:yka_app/presentation/explore_maserati_page/models/explore_maserati_model.dart';
part 'explore_maserati_event.dart';
part 'explore_maserati_state.dart';

/// A bloc that manages the state of a ExploreMaserati according to the event that is dispatched to it.
class ExploreMaseratiBloc
    extends Bloc<ExploreMaseratiEvent, ExploreMaseratiState> {
  ExploreMaseratiBloc(ExploreMaseratiState initialState) : super(initialState) {
    on<ExploreMaseratiInitialEvent>(_onInitialize);
    on<ChangeDropDownEvent>(_changeDropDown);
    on<ChangeDropDown1Event>(_changeDropDown1);
    on<ChangeDropDown2Event>(_changeDropDown2);
  }

  _changeDropDown(
    ChangeDropDownEvent event,
    Emitter<ExploreMaseratiState> emit,
  ) {
    emit(state.copyWith(
      selectedDropDownValue: event.value,
    ));
  }

  _changeDropDown1(
    ChangeDropDown1Event event,
    Emitter<ExploreMaseratiState> emit,
  ) {
    emit(state.copyWith(
      selectedDropDownValue1: event.value,
    ));
  }

  _changeDropDown2(
    ChangeDropDown2Event event,
    Emitter<ExploreMaseratiState> emit,
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

  List<ViewhierarchysectionItemModel> fillViewhierarchysectionItemList() {
    return [
      ViewhierarchysectionItemModel(
          text1: "Magnetic Blue",
          text2: "Mustang Coupe",
          text3: "BHD 500",
          text4: "FORD",
          image3: ImageConstant.imgImage5273108x291),
      ViewhierarchysectionItemModel(
          text4: "FORD", image3: ImageConstant.imgImage42122x320),
      ViewhierarchysectionItemModel(
          text4: "FORD", image3: ImageConstant.imgImage93)
    ];
  }

  _onInitialize(
    ExploreMaseratiInitialEvent event,
    Emitter<ExploreMaseratiState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        exploreMaseratiModelObj: state.exploreMaseratiModelObj?.copyWith(
      dropdownItemList: fillDropdownItemList(),
      dropdownItemList1: fillDropdownItemList1(),
      dropdownItemList2: fillDropdownItemList2(),
      viewhierarchysectionItemList: fillViewhierarchysectionItemList(),
    )));
  }
}
