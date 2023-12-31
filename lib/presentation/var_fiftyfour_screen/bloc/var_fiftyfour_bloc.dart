import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:yka_app/presentation/var_fiftyfour_screen/models/var_fiftyfour_model.dart';
part 'var_fiftyfour_event.dart';
part 'var_fiftyfour_state.dart';

/// A bloc that manages the state of a VarFiftyfour according to the event that is dispatched to it.
class VarFiftyfourBloc extends Bloc<VarFiftyfourEvent, VarFiftyfourState> {
  VarFiftyfourBloc(VarFiftyfourState initialState) : super(initialState) {
    on<VarFiftyfourInitialEvent>(_onInitialize);
  }

  _onInitialize(
    VarFiftyfourInitialEvent event,
    Emitter<VarFiftyfourState> emit,
  ) async {}
}
