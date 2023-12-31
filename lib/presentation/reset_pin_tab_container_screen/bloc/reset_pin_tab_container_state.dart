// ignore_for_file: must_be_immutable

part of 'reset_pin_tab_container_bloc.dart';

/// Represents the state of ResetPinTabContainer in the application.
class ResetPinTabContainerState extends Equatable {
  ResetPinTabContainerState({
    this.searchController,
    this.resetPinTabContainerModelObj,
  });

  TextEditingController? searchController;

  ResetPinTabContainerModel? resetPinTabContainerModelObj;

  @override
  List<Object?> get props => [
        searchController,
        resetPinTabContainerModelObj,
      ];
  ResetPinTabContainerState copyWith({
    TextEditingController? searchController,
    ResetPinTabContainerModel? resetPinTabContainerModelObj,
  }) {
    return ResetPinTabContainerState(
      searchController: searchController ?? this.searchController,
      resetPinTabContainerModelObj:
          resetPinTabContainerModelObj ?? this.resetPinTabContainerModelObj,
    );
  }
}
