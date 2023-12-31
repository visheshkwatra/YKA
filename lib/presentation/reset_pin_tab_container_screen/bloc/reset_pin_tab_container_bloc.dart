import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:yka_app/presentation/reset_pin_tab_container_screen/models/reset_pin_tab_container_model.dart';part 'reset_pin_tab_container_event.dart';part 'reset_pin_tab_container_state.dart';/// A bloc that manages the state of a ResetPinTabContainer according to the event that is dispatched to it.
class ResetPinTabContainerBloc extends Bloc<ResetPinTabContainerEvent, ResetPinTabContainerState> {ResetPinTabContainerBloc(ResetPinTabContainerState initialState) : super(initialState) { on<ResetPinTabContainerInitialEvent>(_onInitialize); }

_onInitialize(ResetPinTabContainerInitialEvent event, Emitter<ResetPinTabContainerState> emit, ) async  { emit(state.copyWith(searchController: TextEditingController())); } 
 }
