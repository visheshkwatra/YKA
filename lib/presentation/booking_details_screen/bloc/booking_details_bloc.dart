import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/interiortext_item_model.dart';
import '../models/carnamelist_item_model.dart';
import 'package:yka_app/presentation/booking_details_screen/models/booking_details_model.dart';
part 'booking_details_event.dart';
part 'booking_details_state.dart';

/// A bloc that manages the state of a BookingDetails according to the event that is dispatched to it.
class BookingDetailsBloc
    extends Bloc<BookingDetailsEvent, BookingDetailsState> {
  BookingDetailsBloc(BookingDetailsState initialState) : super(initialState) {
    on<BookingDetailsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    BookingDetailsInitialEvent event,
    Emitter<BookingDetailsState> emit,
  ) async {
    emit(state.copyWith(
        bookingDetailsModelObj: state.bookingDetailsModelObj?.copyWith(
      interiortextItemList: fillInteriortextItemList(),
      carnamelistItemList: fillCarnamelistItemList(),
    )));
  }

  List<InteriortextItemModel> fillInteriortextItemList() {
    return [
      InteriortextItemModel(
          interiorImage: ImageConstant.imgRectangle34625941,
          interiorText: "Interior"),
      InteriortextItemModel(
          interiorImage: ImageConstant.imgRectangle34625944,
          interiorText: "Features"),
      InteriortextItemModel(interiorText: "Exterior")
    ];
  }

  List<CarnamelistItemModel> fillCarnamelistItemList() {
    return [
      CarnamelistItemModel(
          carImage: ImageConstant.imgCamera,
          carName: "1500 cc",
          engineType: "Engine"),
      CarnamelistItemModel(
          carImage: ImageConstant.imgFi11520532,
          carName: "Manual",
          engineType: "Gear"),
      CarnamelistItemModel(
          carImage: ImageConstant.imgFi3815931,
          carName: "Petrol",
          engineType: "Engine"),
      CarnamelistItemModel(
          carImage: ImageConstant.imgGroup,
          carName: "2023",
          engineType: "Year"),
      CarnamelistItemModel(
          carImage: ImageConstant.imgCamera, carName: "4", engineType: "Doors")
    ];
  }
}
