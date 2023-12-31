import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:yka_app/presentation/var_eleven_page/models/var_eleven_model.dart';
part 'var_eleven_event.dart';
part 'var_eleven_state.dart';

/// A bloc that manages the state of a VarEleven according to the event that is dispatched to it.
class VarElevenBloc extends Bloc<VarElevenEvent, VarElevenState> {
  VarElevenBloc(VarElevenState initialState) : super(initialState) {
    on<VarElevenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    VarElevenInitialEvent event,
    Emitter<VarElevenState> emit,
  ) async {}
}
