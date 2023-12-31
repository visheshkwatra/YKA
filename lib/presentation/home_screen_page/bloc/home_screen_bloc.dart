import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/businesscard1_item_model.dart';
import 'package:yka_app/presentation/home_screen_page/models/home_screen_model.dart';
part 'home_screen_event.dart';
part 'home_screen_state.dart';

/// A bloc that manages the state of a HomeScreen according to the event that is dispatched to it.
class HomeScreenBloc extends Bloc<HomeScreenEvent, HomeScreenState> {
  HomeScreenBloc(HomeScreenState initialState) : super(initialState) {
    on<HomeScreenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HomeScreenInitialEvent event,
    Emitter<HomeScreenState> emit,
  ) async {
    emit(state.copyWith(
        homeScreenModelObj: state.homeScreenModelObj?.copyWith(
      businesscard1ItemList: fillBusinesscard1ItemList(),
    )));
  }

  List<Businesscard1ItemModel> fillBusinesscard1ItemList() {
    return [
      Businesscard1ItemModel(
          title: "Riyadh Motors",
          rating: "4.5 Rated",
          hours: "Open 24 Hours",
          callButton: "Call"),
      Businesscard1ItemModel(
          title: "Riyadh Motors",
          rating: "4.5 Rated",
          hours: "Open 24 Hours",
          callButton: "Call"),
      Businesscard1ItemModel(
          title: "Riyadh Motors",
          rating: "4.5 Rated",
          hours: "Open 24 Hours",
          callButton: "Call"),
      Businesscard1ItemModel(
          title: "Riyadh Motors",
          rating: "4.5 Rated",
          hours: "Open 24 Hours",
          callButton: "Call")
    ];
  }
}
