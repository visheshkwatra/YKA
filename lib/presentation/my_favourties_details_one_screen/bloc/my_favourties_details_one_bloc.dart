import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/interiortext3_item_model.dart';
import '../models/cardetailslist3_item_model.dart';
import 'package:yka_app/presentation/my_favourties_details_one_screen/models/my_favourties_details_one_model.dart';
part 'my_favourties_details_one_event.dart';
part 'my_favourties_details_one_state.dart';

/// A bloc that manages the state of a MyFavourtiesDetailsOne according to the event that is dispatched to it.
class MyFavourtiesDetailsOneBloc
    extends Bloc<MyFavourtiesDetailsOneEvent, MyFavourtiesDetailsOneState> {
  MyFavourtiesDetailsOneBloc(MyFavourtiesDetailsOneState initialState)
      : super(initialState) {
    on<MyFavourtiesDetailsOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MyFavourtiesDetailsOneInitialEvent event,
    Emitter<MyFavourtiesDetailsOneState> emit,
  ) async {
    emit(state.copyWith(
        myFavourtiesDetailsOneModelObj:
            state.myFavourtiesDetailsOneModelObj?.copyWith(
      interiortext3ItemList: fillInteriortext3ItemList(),
      cardetailslist3ItemList: fillCardetailslist3ItemList(),
    )));
  }

  List<Interiortext3ItemModel> fillInteriortext3ItemList() {
    return [
      Interiortext3ItemModel(
          interiorImage: ImageConstant.imgRectangle34625941,
          interiorText: "Interior"),
      Interiortext3ItemModel(
          interiorImage: ImageConstant.imgRectangle34625944,
          interiorText: "Features"),
      Interiortext3ItemModel(interiorText: "Exterior")
    ];
  }

  List<Cardetailslist3ItemModel> fillCardetailslist3ItemList() {
    return [
      Cardetailslist3ItemModel(
          carImage: ImageConstant.imgCamera,
          carName: "1500 cc",
          engineType: "Engine"),
      Cardetailslist3ItemModel(
          carImage: ImageConstant.imgFi11520532,
          carName: "Manual",
          engineType: "Gear"),
      Cardetailslist3ItemModel(
          carImage: ImageConstant.imgFi3815931,
          carName: "Petrol",
          engineType: "Engine"),
      Cardetailslist3ItemModel(
          carImage: ImageConstant.imgGroup,
          carName: "2023",
          engineType: "Year"),
      Cardetailslist3ItemModel(
          carImage: ImageConstant.imgCamera, carName: "4", engineType: "Doors")
    ];
  }
}
