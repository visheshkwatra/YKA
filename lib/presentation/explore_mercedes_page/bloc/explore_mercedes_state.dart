// ignore_for_file: must_be_immutable

part of 'explore_mercedes_bloc.dart';

/// Represents the state of ExploreMercedes in the application.
class ExploreMercedesState extends Equatable {
  ExploreMercedesState({
    this.searchController,
    this.selectedDropDownValue,
    this.selectedDropDownValue1,
    this.selectedDropDownValue2,
    this.exploreMercedesModelObj,
  });

  TextEditingController? searchController;

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  SelectionPopupModel? selectedDropDownValue2;

  ExploreMercedesModel? exploreMercedesModelObj;

  @override
  List<Object?> get props => [
        searchController,
        selectedDropDownValue,
        selectedDropDownValue1,
        selectedDropDownValue2,
        exploreMercedesModelObj,
      ];
  ExploreMercedesState copyWith({
    TextEditingController? searchController,
    SelectionPopupModel? selectedDropDownValue,
    SelectionPopupModel? selectedDropDownValue1,
    SelectionPopupModel? selectedDropDownValue2,
    ExploreMercedesModel? exploreMercedesModelObj,
  }) {
    return ExploreMercedesState(
      searchController: searchController ?? this.searchController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      selectedDropDownValue1:
          selectedDropDownValue1 ?? this.selectedDropDownValue1,
      selectedDropDownValue2:
          selectedDropDownValue2 ?? this.selectedDropDownValue2,
      exploreMercedesModelObj:
          exploreMercedesModelObj ?? this.exploreMercedesModelObj,
    );
  }
}
