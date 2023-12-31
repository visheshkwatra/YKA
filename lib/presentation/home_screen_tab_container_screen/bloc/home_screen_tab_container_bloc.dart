import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:yka_app/presentation/home_screen_tab_container_screen/models/home_screen_tab_container_model.dart';
part 'home_screen_tab_container_event.dart';
part 'home_screen_tab_container_state.dart';

/// A bloc that manages the state of a HomeScreenTabContainer according to the event that is dispatched to it.
class HomeScreenTabContainerBloc
    extends Bloc<HomeScreenTabContainerEvent, HomeScreenTabContainerState> {
  HomeScreenTabContainerBloc(HomeScreenTabContainerState initialState)
      : super(initialState) {
    on<HomeScreenTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HomeScreenTabContainerInitialEvent event,
    Emitter<HomeScreenTabContainerState> emit,
  ) async {}
}
