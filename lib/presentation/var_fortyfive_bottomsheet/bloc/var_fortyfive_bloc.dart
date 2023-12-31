import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:yka_app/presentation/var_fortyfive_bottomsheet/models/var_fortyfive_model.dart';
part 'var_fortyfive_event.dart';
part 'var_fortyfive_state.dart';

/// A bloc that manages the state of a VarFortyfive according to the event that is dispatched to it.
class VarFortyfiveBloc extends Bloc<VarFortyfiveEvent, VarFortyfiveState> {
  VarFortyfiveBloc(VarFortyfiveState initialState) : super(initialState) {
    on<VarFortyfiveInitialEvent>(_onInitialize);
  }

  _onInitialize(
    VarFortyfiveInitialEvent event,
    Emitter<VarFortyfiveState> emit,
  ) async {}
}
