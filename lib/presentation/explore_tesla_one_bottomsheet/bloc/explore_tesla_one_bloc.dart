import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/carselectorgrid_item_model.dart';
import '../models/bhdchipview_item_model.dart';
import '../models/petrol_item_model.dart';
import 'package:yka_app/presentation/explore_tesla_one_bottomsheet/models/explore_tesla_one_model.dart';
part 'explore_tesla_one_event.dart';
part 'explore_tesla_one_state.dart';

/// A bloc that manages the state of a ExploreTeslaOne according to the event that is dispatched to it.
class ExploreTeslaOneBloc
    extends Bloc<ExploreTeslaOneEvent, ExploreTeslaOneState> {
  ExploreTeslaOneBloc(ExploreTeslaOneState initialState) : super(initialState) {
    on<ExploreTeslaOneInitialEvent>(_onInitialize);
    on<UpdateChipViewEvent>(_updateChipView);
    on<UpdateChipView1Event>(_updateChipView1);
  }

  _onInitialize(
    ExploreTeslaOneInitialEvent event,
    Emitter<ExploreTeslaOneState> emit,
  ) async {
    emit(state.copyWith(
        exploreTeslaOneModelObj: state.exploreTeslaOneModelObj?.copyWith(
      carselectorgridItemList: fillCarselectorgridItemList(),
      bhdchipviewItemList: fillBhdchipviewItemList(),
      petrolItemList: fillPetrolItemList(),
    )));
  }

  _updateChipView(
    UpdateChipViewEvent event,
    Emitter<ExploreTeslaOneState> emit,
  ) {
    List<BhdchipviewItemModel> newList = List<BhdchipviewItemModel>.from(
        state.exploreTeslaOneModelObj!.bhdchipviewItemList);
    newList[event.index] = newList[event.index].copyWith(
      isSelected: event.isSelected,
    );
    emit(state.copyWith(
        exploreTeslaOneModelObj: state.exploreTeslaOneModelObj
            ?.copyWith(bhdchipviewItemList: newList)));
  }

  _updateChipView1(
    UpdateChipView1Event event,
    Emitter<ExploreTeslaOneState> emit,
  ) {
    List<PetrolItemModel> newList = List<PetrolItemModel>.from(
        state.exploreTeslaOneModelObj!.petrolItemList);
    newList[event.index] = newList[event.index].copyWith(
      isSelected: event.isSelected,
    );
    emit(state.copyWith(
        exploreTeslaOneModelObj:
            state.exploreTeslaOneModelObj?.copyWith(petrolItemList: newList)));
  }

  List<CarselectorgridItemModel> fillCarselectorgridItemList() {
    return [
      CarselectorgridItemModel(
          sedanText: "Sedan",
          hatchbackImage: ImageConstant.imgImage105,
          luxurySUVText: "Luxury SUV",
          luxurySUVImage: ImageConstant.imgImage104,
          hatchbackText: "Hatchback",
          hatchbackImage1: ImageConstant.imgImage5279,
          sUVText: "SUV",
          sUVImage: ImageConstant.imgImage10665x158,
          sUVText1: "SUV",
          sUVImage1: ImageConstant.imgImage5282,
          sportsText: "Sports")
    ];
  }

  List<BhdchipviewItemModel> fillBhdchipviewItemList() {
    return List.generate(6, (index) => BhdchipviewItemModel());
  }

  List<PetrolItemModel> fillPetrolItemList() {
    return List.generate(3, (index) => PetrolItemModel());
  }
}
