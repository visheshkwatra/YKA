// ignore_for_file: must_be_immutable

part of 'explore_tesla_bloc.dart';

/// Represents the state of ExploreTesla in the application.
class ExploreTeslaState extends Equatable {
  ExploreTeslaState({
    this.searchController,
    this.selectedDropDownValue,
    this.selectedDropDownValue1,
    this.selectedDropDownValue2,
    this.exploreTeslaModelObj,
  });

  TextEditingController? searchController;

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  SelectionPopupModel? selectedDropDownValue2;

  ExploreTeslaModel? exploreTeslaModelObj;

  @override
  List<Object?> get props => [
        searchController,
        selectedDropDownValue,
        selectedDropDownValue1,
        selectedDropDownValue2,
        exploreTeslaModelObj,
      ];
  ExploreTeslaState copyWith({
    TextEditingController? searchController,
    SelectionPopupModel? selectedDropDownValue,
    SelectionPopupModel? selectedDropDownValue1,
    SelectionPopupModel? selectedDropDownValue2,
    ExploreTeslaModel? exploreTeslaModelObj,
  }) {
    return ExploreTeslaState(
      searchController: searchController ?? this.searchController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      selectedDropDownValue1:
          selectedDropDownValue1 ?? this.selectedDropDownValue1,
      selectedDropDownValue2:
          selectedDropDownValue2 ?? this.selectedDropDownValue2,
      exploreTeslaModelObj: exploreTeslaModelObj ?? this.exploreTeslaModelObj,
    );
  }
}
