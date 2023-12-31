import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/interiortext1_item_model.dart';
import '../models/cardetailslist_item_model.dart';
import 'package:yka_app/presentation/booking_details_one_screen/models/booking_details_one_model.dart';
part 'booking_details_one_event.dart';
part 'booking_details_one_state.dart';

/// A bloc that manages the state of a BookingDetailsOne according to the event that is dispatched to it.
class BookingDetailsOneBloc
    extends Bloc<BookingDetailsOneEvent, BookingDetailsOneState> {
  BookingDetailsOneBloc(BookingDetailsOneState initialState)
      : super(initialState) {
    on<BookingDetailsOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    BookingDetailsOneInitialEvent event,
    Emitter<BookingDetailsOneState> emit,
  ) async {
    emit(state.copyWith(
        bookingDetailsOneModelObj: state.bookingDetailsOneModelObj?.copyWith(
      interiortext1ItemList: fillInteriortext1ItemList(),
      cardetailslistItemList: fillCardetailslistItemList(),
    )));
  }

  List<Interiortext1ItemModel> fillInteriortext1ItemList() {
    return [
      Interiortext1ItemModel(
          interiorImage: ImageConstant.imgRectangle34625941,
          interiorText: "Interior"),
      Interiortext1ItemModel(
          interiorImage: ImageConstant.imgRectangle34625944,
          interiorText: "Features"),
      Interiortext1ItemModel(interiorText: "Exterior")
    ];
  }

  List<CardetailslistItemModel> fillCardetailslistItemList() {
    return [
      CardetailslistItemModel(
          carImage: ImageConstant.imgCamera,
          carName: "1500 cc",
          engineType: "Engine"),
      CardetailslistItemModel(
          carImage: ImageConstant.imgFi11520532,
          carName: "Manual",
          engineType: "Gear"),
      CardetailslistItemModel(
          carImage: ImageConstant.imgFi3815931,
          carName: "Petrol",
          engineType: "Engine"),
      CardetailslistItemModel(
          carImage: ImageConstant.imgGroup,
          carName: "2023",
          engineType: "Year"),
      CardetailslistItemModel(
          carImage: ImageConstant.imgCamera, carName: "4", engineType: "Doors")
    ];
  }
}
