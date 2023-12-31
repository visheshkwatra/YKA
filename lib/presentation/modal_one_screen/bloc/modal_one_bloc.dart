import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:yka_app/presentation/modal_one_screen/models/modal_one_model.dart';
part 'modal_one_event.dart';
part 'modal_one_state.dart';

/// A bloc that manages the state of a ModalOne according to the event that is dispatched to it.
class ModalOneBloc extends Bloc<ModalOneEvent, ModalOneState> {
  ModalOneBloc(ModalOneState initialState) : super(initialState) {
    on<ModalOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ModalOneInitialEvent event,
    Emitter<ModalOneState> emit,
  ) async {}
}
