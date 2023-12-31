// ignore_for_file: must_be_immutable

part of 'explore_maserati_bloc.dart';

/// Represents the state of ExploreMaserati in the application.
class ExploreMaseratiState extends Equatable {
  ExploreMaseratiState({
    this.searchController,
    this.selectedDropDownValue,
    this.selectedDropDownValue1,
    this.selectedDropDownValue2,
    this.exploreMaseratiModelObj,
  });

  TextEditingController? searchController;

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  SelectionPopupModel? selectedDropDownValue2;

  ExploreMaseratiModel? exploreMaseratiModelObj;

  @override
  List<Object?> get props => [
        searchController,
        selectedDropDownValue,
        selectedDropDownValue1,
        selectedDropDownValue2,
        exploreMaseratiModelObj,
      ];
  ExploreMaseratiState copyWith({
    TextEditingController? searchController,
    SelectionPopupModel? selectedDropDownValue,
    SelectionPopupModel? selectedDropDownValue1,
    SelectionPopupModel? selectedDropDownValue2,
    ExploreMaseratiModel? exploreMaseratiModelObj,
  }) {
    return ExploreMaseratiState(
      searchController: searchController ?? this.searchController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      selectedDropDownValue1:
          selectedDropDownValue1 ?? this.selectedDropDownValue1,
      selectedDropDownValue2:
          selectedDropDownValue2 ?? this.selectedDropDownValue2,
      exploreMaseratiModelObj:
          exploreMaseratiModelObj ?? this.exploreMaseratiModelObj,
    );
  }
}
