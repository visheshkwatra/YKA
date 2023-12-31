import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:yka_app/presentation/splash_six_screen/models/splash_six_model.dart';
part 'splash_six_event.dart';
part 'splash_six_state.dart';

/// A bloc that manages the state of a SplashSix according to the event that is dispatched to it.
class SplashSixBloc extends Bloc<SplashSixEvent, SplashSixState> {
  SplashSixBloc(SplashSixState initialState) : super(initialState) {
    on<SplashSixInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SplashSixInitialEvent event,
    Emitter<SplashSixState> emit,
  ) async {}
}
