import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:yka_app/presentation/service_one_dialog/models/service_one_model.dart';
part 'service_one_event.dart';
part 'service_one_state.dart';

/// A bloc that manages the state of a ServiceOne according to the event that is dispatched to it.
class ServiceOneBloc extends Bloc<ServiceOneEvent, ServiceOneState> {
  ServiceOneBloc(ServiceOneState initialState) : super(initialState) {
    on<ServiceOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ServiceOneInitialEvent event,
    Emitter<ServiceOneState> emit,
  ) async {}
}
