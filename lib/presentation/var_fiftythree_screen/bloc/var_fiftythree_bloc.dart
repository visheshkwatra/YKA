import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:yka_app/presentation/var_fiftythree_screen/models/var_fiftythree_model.dart';
part 'var_fiftythree_event.dart';
part 'var_fiftythree_state.dart';

/// A bloc that manages the state of a VarFiftythree according to the event that is dispatched to it.
class VarFiftythreeBloc extends Bloc<VarFiftythreeEvent, VarFiftythreeState> {
  VarFiftythreeBloc(VarFiftythreeState initialState) : super(initialState) {
    on<VarFiftythreeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    VarFiftythreeInitialEvent event,
    Emitter<VarFiftythreeState> emit,
  ) async {}
}
