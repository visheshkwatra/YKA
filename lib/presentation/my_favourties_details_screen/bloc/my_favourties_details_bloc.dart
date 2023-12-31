import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/interiortext2_item_model.dart';
import '../models/cardetailslist1_item_model.dart';
import 'package:yka_app/presentation/my_favourties_details_screen/models/my_favourties_details_model.dart';
part 'my_favourties_details_event.dart';
part 'my_favourties_details_state.dart';

/// A bloc that manages the state of a MyFavourtiesDetails according to the event that is dispatched to it.
class MyFavourtiesDetailsBloc
    extends Bloc<MyFavourtiesDetailsEvent, MyFavourtiesDetailsState> {
  MyFavourtiesDetailsBloc(MyFavourtiesDetailsState initialState)
      : super(initialState) {
    on<MyFavourtiesDetailsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MyFavourtiesDetailsInitialEvent event,
    Emitter<MyFavourtiesDetailsState> emit,
  ) async {
    emit(state.copyWith(
        myFavourtiesDetailsModelObj:
            state.myFavourtiesDetailsModelObj?.copyWith(
      interiortext2ItemList: fillInteriortext2ItemList(),
      cardetailslist1ItemList: fillCardetailslist1ItemList(),
    )));
  }

  List<Interiortext2ItemModel> fillInteriortext2ItemList() {
    return [
      Interiortext2ItemModel(
          interiorImage: ImageConstant.imgRectangle34625941,
          interiorText: "Interior"),
      Interiortext2ItemModel(
          interiorImage: ImageConstant.imgRectangle34625944,
          interiorText: "Features"),
      Interiortext2ItemModel(interiorText: "Exterior")
    ];
  }

  List<Cardetailslist1ItemModel> fillCardetailslist1ItemList() {
    return [
      Cardetailslist1ItemModel(
          carImage: ImageConstant.imgCamera,
          carName: "1500 cc",
          engineType: "Engine"),
      Cardetailslist1ItemModel(
          carImage: ImageConstant.imgFi11520532,
          carName: "Manual",
          engineType: "Gear"),
      Cardetailslist1ItemModel(
          carImage: ImageConstant.imgFi3815931,
          carName: "Petrol",
          engineType: "Engine"),
      Cardetailslist1ItemModel(
          carImage: ImageConstant.imgGroup,
          carName: "2023",
          engineType: "Year"),
      Cardetailslist1ItemModel(
          carImage: ImageConstant.imgCamera, carName: "4", engineType: "Doors")
    ];
  }
}
