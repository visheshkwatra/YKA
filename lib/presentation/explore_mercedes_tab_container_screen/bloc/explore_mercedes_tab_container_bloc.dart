import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:yka_app/presentation/explore_mercedes_tab_container_screen/models/explore_mercedes_tab_container_model.dart';part 'explore_mercedes_tab_container_event.dart';part 'explore_mercedes_tab_container_state.dart';/// A bloc that manages the state of a ExploreMercedesTabContainer according to the event that is dispatched to it.
class ExploreMercedesTabContainerBloc extends Bloc<ExploreMercedesTabContainerEvent, ExploreMercedesTabContainerState> {ExploreMercedesTabContainerBloc(ExploreMercedesTabContainerState initialState) : super(initialState) { on<ExploreMercedesTabContainerInitialEvent>(_onInitialize); }

_onInitialize(ExploreMercedesTabContainerInitialEvent event, Emitter<ExploreMercedesTabContainerState> emit, ) async  {  } 
 }
