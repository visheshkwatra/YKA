import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/yearcomponent_item_model.dart';
import 'package:yka_app/presentation/my_vehicle_details_bottomsheet/models/my_vehicle_details_model.dart';
part 'my_vehicle_details_event.dart';
part 'my_vehicle_details_state.dart';

/// A bloc that manages the state of a MyVehicleDetails according to the event that is dispatched to it.
class MyVehicleDetailsBloc
    extends Bloc<MyVehicleDetailsEvent, MyVehicleDetailsState> {
  MyVehicleDetailsBloc(MyVehicleDetailsState initialState)
      : super(initialState) {
    on<MyVehicleDetailsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MyVehicleDetailsInitialEvent event,
    Emitter<MyVehicleDetailsState> emit,
  ) async {
    emit(state.copyWith(
        myVehicleDetailsModelObj: state.myVehicleDetailsModelObj?.copyWith(
      yearcomponentItemList: fillYearcomponentItemList(),
    )));
  }

  List<YearcomponentItemModel> fillYearcomponentItemList() {
    return [
      YearcomponentItemModel(
          yearImage: ImageConstant.imgGroup,
          yearText: "2023",
          yearText1: "Year"),
      YearcomponentItemModel(
          yearImage: ImageConstant.imgCamera,
          yearText: "22,0000",
          yearText1: "GCC (Km)"),
      YearcomponentItemModel(
          yearImage: ImageConstant.imgFi11737273,
          yearText: "123456",
          yearText1: "VRN")
    ];
  }
}
