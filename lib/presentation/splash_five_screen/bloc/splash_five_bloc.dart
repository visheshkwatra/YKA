import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:yka_app/presentation/splash_five_screen/models/splash_five_model.dart';
part 'splash_five_event.dart';
part 'splash_five_state.dart';

/// A bloc that manages the state of a SplashFive according to the event that is dispatched to it.
class SplashFiveBloc extends Bloc<SplashFiveEvent, SplashFiveState> {
  SplashFiveBloc(SplashFiveState initialState) : super(initialState) {
    on<SplashFiveInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SplashFiveInitialEvent event,
    Emitter<SplashFiveState> emit,
  ) async {}
}
