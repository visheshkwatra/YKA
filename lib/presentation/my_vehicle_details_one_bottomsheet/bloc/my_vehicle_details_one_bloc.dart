import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/yearcomponent1_item_model.dart';
import 'package:yka_app/presentation/my_vehicle_details_one_bottomsheet/models/my_vehicle_details_one_model.dart';
part 'my_vehicle_details_one_event.dart';
part 'my_vehicle_details_one_state.dart';

/// A bloc that manages the state of a MyVehicleDetailsOne according to the event that is dispatched to it.
class MyVehicleDetailsOneBloc
    extends Bloc<MyVehicleDetailsOneEvent, MyVehicleDetailsOneState> {
  MyVehicleDetailsOneBloc(MyVehicleDetailsOneState initialState)
      : super(initialState) {
    on<MyVehicleDetailsOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MyVehicleDetailsOneInitialEvent event,
    Emitter<MyVehicleDetailsOneState> emit,
  ) async {
    emit(state.copyWith(
        myVehicleDetailsOneModelObj:
            state.myVehicleDetailsOneModelObj?.copyWith(
      yearcomponent1ItemList: fillYearcomponent1ItemList(),
    )));
  }

  List<Yearcomponent1ItemModel> fillYearcomponent1ItemList() {
    return [
      Yearcomponent1ItemModel(
          yearImage: ImageConstant.imgGroup,
          yearText: "2023",
          yearLabel: "Year"),
      Yearcomponent1ItemModel(
          yearImage: ImageConstant.imgCamera,
          yearText: "22,0000",
          yearLabel: "GCC (Km)"),
      Yearcomponent1ItemModel(
          yearImage: ImageConstant.imgFi11737273,
          yearText: "123456",
          yearLabel: "VRN")
    ];
  }
}
