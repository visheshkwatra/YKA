import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofile1_item_model.dart';
import '../models/widget2_item_model.dart';
import '../models/recentlyviewed_item_model.dart';
import '../models/explorecarscomponent_item_model.dart';
import 'package:yka_app/presentation/var_eleven_tab_container_page/models/var_eleven_tab_container_model.dart';
part 'var_eleven_tab_container_event.dart';
part 'var_eleven_tab_container_state.dart';

/// A bloc that manages the state of a VarElevenTabContainer according to the event that is dispatched to it.
class VarElevenTabContainerBloc
    extends Bloc<VarElevenTabContainerEvent, VarElevenTabContainerState> {
  VarElevenTabContainerBloc(VarElevenTabContainerState initialState)
      : super(initialState) {
    on<VarElevenTabContainerInitialEvent>(_onInitialize);
  }

  List<Userprofile1ItemModel> fillUserprofile1ItemList() {
    return [
      Userprofile1ItemModel(
          dynamicProperty3: "Driving Pleasure.",
          dynamicProperty4: "Precision Care for Your Car",
          dynamicProperty5: "Explore Services",
          dynamicProperty6: ImageConstant.imgArrowRightPrimary6x8)
    ];
  }

  List<Widget2ItemModel> fillWidget2ItemList() {
    return [
      Widget2ItemModel(image: ImageConstant.imgGroup360),
      Widget2ItemModel(image: ImageConstant.imgImage5267)
    ];
  }

  List<RecentlyviewedItemModel> fillRecentlyviewedItemList() {
    return [RecentlyviewedItemModel(recentlyViewed: "Recently Viewed")];
  }

  List<ExplorecarscomponentItemModel> fillExplorecarscomponentItemList() {
    return List.generate(2, (index) => ExplorecarscomponentItemModel());
  }

  _onInitialize(
    VarElevenTabContainerInitialEvent event,
    Emitter<VarElevenTabContainerState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
      sliderIndex: 0,
    ));
    emit(state.copyWith(
        varElevenTabContainerModelObj:
            state.varElevenTabContainerModelObj?.copyWith(
      userprofile1ItemList: fillUserprofile1ItemList(),
      widget2ItemList: fillWidget2ItemList(),
      recentlyviewedItemList: fillRecentlyviewedItemList(),
      explorecarscomponentItemList: fillExplorecarscomponentItemList(),
    )));
  }
}
