import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:yka_app/presentation/splash_seven_screen/models/splash_seven_model.dart';
part 'splash_seven_event.dart';
part 'splash_seven_state.dart';

/// A bloc that manages the state of a SplashSeven according to the event that is dispatched to it.
class SplashSevenBloc extends Bloc<SplashSevenEvent, SplashSevenState> {
  SplashSevenBloc(SplashSevenState initialState) : super(initialState) {
    on<SplashSevenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SplashSevenInitialEvent event,
    Emitter<SplashSevenState> emit,
  ) async {}
}
