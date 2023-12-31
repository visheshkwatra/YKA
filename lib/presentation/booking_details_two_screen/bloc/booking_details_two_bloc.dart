import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/interiortext4_item_model.dart';
import '../models/carnamelist1_item_model.dart';
import 'package:yka_app/presentation/booking_details_two_screen/models/booking_details_two_model.dart';
part 'booking_details_two_event.dart';
part 'booking_details_two_state.dart';

/// A bloc that manages the state of a BookingDetailsTwo according to the event that is dispatched to it.
class BookingDetailsTwoBloc
    extends Bloc<BookingDetailsTwoEvent, BookingDetailsTwoState> {
  BookingDetailsTwoBloc(BookingDetailsTwoState initialState)
      : super(initialState) {
    on<BookingDetailsTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    BookingDetailsTwoInitialEvent event,
    Emitter<BookingDetailsTwoState> emit,
  ) async {
    emit(state.copyWith(
        bookingDetailsTwoModelObj: state.bookingDetailsTwoModelObj?.copyWith(
      interiortext4ItemList: fillInteriortext4ItemList(),
      carnamelist1ItemList: fillCarnamelist1ItemList(),
    )));
  }

  List<Interiortext4ItemModel> fillInteriortext4ItemList() {
    return [
      Interiortext4ItemModel(
          interiorImage: ImageConstant.imgRectangle34625941,
          interiorText: "Interior"),
      Interiortext4ItemModel(
          interiorImage: ImageConstant.imgRectangle34625944,
          interiorText: "Features"),
      Interiortext4ItemModel(interiorText: "Exterior")
    ];
  }

  List<Carnamelist1ItemModel> fillCarnamelist1ItemList() {
    return [
      Carnamelist1ItemModel(
          carImage: ImageConstant.imgCamera,
          carName: "1500 cc",
          engineType: "Engine"),
      Carnamelist1ItemModel(
          carImage: ImageConstant.imgFi11520532,
          carName: "Manual",
          engineType: "Gear"),
      Carnamelist1ItemModel(
          carImage: ImageConstant.imgFi3815931,
          carName: "Petrol",
          engineType: "Engine"),
      Carnamelist1ItemModel(
          carImage: ImageConstant.imgGroup,
          carName: "2023",
          engineType: "Year"),
      Carnamelist1ItemModel(
          carImage: ImageConstant.imgCamera, carName: "4", engineType: "Doors")
    ];
  }
}
