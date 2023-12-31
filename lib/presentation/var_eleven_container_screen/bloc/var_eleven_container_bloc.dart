import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:yka_app/presentation/var_eleven_container_screen/models/var_eleven_container_model.dart';part 'var_eleven_container_event.dart';part 'var_eleven_container_state.dart';/// A bloc that manages the state of a VarElevenContainer according to the event that is dispatched to it.
class VarElevenContainerBloc extends Bloc<VarElevenContainerEvent, VarElevenContainerState> {VarElevenContainerBloc(VarElevenContainerState initialState) : super(initialState) { on<VarElevenContainerInitialEvent>(_onInitialize); }

_onInitialize(VarElevenContainerInitialEvent event, Emitter<VarElevenContainerState> emit, ) async  {  } 
 }
