import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/businesscard_item_model.dart';
import 'package:yka_app/presentation/reset_pin_page/models/reset_pin_model.dart';
part 'reset_pin_event.dart';
part 'reset_pin_state.dart';

/// A bloc that manages the state of a ResetPin according to the event that is dispatched to it.
class ResetPinBloc extends Bloc<ResetPinEvent, ResetPinState> {
  ResetPinBloc(ResetPinState initialState) : super(initialState) {
    on<ResetPinInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ResetPinInitialEvent event,
    Emitter<ResetPinState> emit,
  ) async {
    emit(state.copyWith(
        resetPinModelObj: state.resetPinModelObj?.copyWith(
      businesscardItemList: fillBusinesscardItemList(),
    )));
  }

  List<BusinesscardItemModel> fillBusinesscardItemList() {
    return [
      BusinesscardItemModel(
          title: "Riyadh Motors",
          rating: "4.5 Rated",
          hours: "Open 24 Hours",
          callText: "Call"),
      BusinesscardItemModel(
          title: "Riyadh Motors",
          rating: "4.5 Rated",
          hours: "Open 24 Hours",
          callText: "Call")
    ];
  }
}
