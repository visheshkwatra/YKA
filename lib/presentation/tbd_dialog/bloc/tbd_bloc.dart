import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:yka_app/presentation/tbd_dialog/models/tbd_model.dart';
part 'tbd_event.dart';
part 'tbd_state.dart';

/// A bloc that manages the state of a Tbd according to the event that is dispatched to it.
class TbdBloc extends Bloc<TbdEvent, TbdState> {
  TbdBloc(TbdState initialState) : super(initialState) {
    on<TbdInitialEvent>(_onInitialize);
  }

  _onInitialize(
    TbdInitialEvent event,
    Emitter<TbdState> emit,
  ) async {}
}
