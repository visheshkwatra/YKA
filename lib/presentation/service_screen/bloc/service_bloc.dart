import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/view_item_model.dart';
import '../models/userprofile2_item_model.dart';
import 'package:yka_app/presentation/service_screen/models/service_model.dart';
part 'service_event.dart';
part 'service_state.dart';

/// A bloc that manages the state of a Service according to the event that is dispatched to it.
class ServiceBloc extends Bloc<ServiceEvent, ServiceState> {
  ServiceBloc(ServiceState initialState) : super(initialState) {
    on<ServiceInitialEvent>(_onInitialize);
  }

  List<ViewItemModel> fillViewItemList() {
    return List.generate(1, (index) => ViewItemModel());
  }

  List<Userprofile2ItemModel> fillUserprofile2ItemList() {
    return [
      Userprofile2ItemModel(
          serviceName: "Peroidic Services", plusText: "+", addText: "ADD"),
      Userprofile2ItemModel(
          serviceName: "Peroidic Services", plusText: "+", addText: "ADD"),
      Userprofile2ItemModel(
          serviceName: "Peroidic Services", plusText: "+", addText: "ADD"),
      Userprofile2ItemModel(
          serviceName: "Peroidic Services", plusText: "+", addText: "ADD"),
      Userprofile2ItemModel(
          serviceName: "Peroidic Services", plusText: "+", addText: "ADD")
    ];
  }

  _onInitialize(
    ServiceInitialEvent event,
    Emitter<ServiceState> emit,
  ) async {
    emit(state.copyWith(
      riyadhController: TextEditingController(),
      sliderIndex: 0,
    ));
    emit(state.copyWith(
        serviceModelObj: state.serviceModelObj?.copyWith(
      viewItemList: fillViewItemList(),
      userprofile2ItemList: fillUserprofile2ItemList(),
    )));
  }
}
