// ignore_for_file: must_be_immutable

part of 'var_eleven_tab_container_bloc.dart';

/// Represents the state of VarElevenTabContainer in the application.
class VarElevenTabContainerState extends Equatable {
  VarElevenTabContainerState({
    this.searchController,
    this.sliderIndex = 0,
    this.varElevenTabContainerModelObj,
  });

  TextEditingController? searchController;

  VarElevenTabContainerModel? varElevenTabContainerModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        searchController,
        sliderIndex,
        varElevenTabContainerModelObj,
      ];
  VarElevenTabContainerState copyWith({
    TextEditingController? searchController,
    int? sliderIndex,
    VarElevenTabContainerModel? varElevenTabContainerModelObj,
  }) {
    return VarElevenTabContainerState(
      searchController: searchController ?? this.searchController,
      sliderIndex: sliderIndex ?? this.sliderIndex,
      varElevenTabContainerModelObj:
          varElevenTabContainerModelObj ?? this.varElevenTabContainerModelObj,
    );
  }
}
