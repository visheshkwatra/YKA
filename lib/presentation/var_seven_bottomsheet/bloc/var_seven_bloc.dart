import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:yka_app/presentation/var_seven_bottomsheet/models/var_seven_model.dart';
part 'var_seven_event.dart';
part 'var_seven_state.dart';

/// A bloc that manages the state of a VarSeven according to the event that is dispatched to it.
class VarSevenBloc extends Bloc<VarSevenEvent, VarSevenState> {
  VarSevenBloc(VarSevenState initialState) : super(initialState) {
    on<VarSevenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    VarSevenInitialEvent event,
    Emitter<VarSevenState> emit,
  ) async {}
}
