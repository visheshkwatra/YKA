import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:yka_app/presentation/modal_screen/models/modal_model.dart';
part 'modal_event.dart';
part 'modal_state.dart';

/// A bloc that manages the state of a Modal according to the event that is dispatched to it.
class ModalBloc extends Bloc<ModalEvent, ModalState> {
  ModalBloc(ModalState initialState) : super(initialState) {
    on<ModalInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ModalInitialEvent event,
    Emitter<ModalState> emit,
  ) async {}
}
