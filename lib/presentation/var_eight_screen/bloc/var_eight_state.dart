// ignore_for_file: must_be_immutable

part of 'var_eight_bloc.dart';

/// Represents the state of VarEight in the application.
class VarEightState extends Equatable {
  VarEightState({
    this.searchController,
    this.varEightModelObj,
  });

  TextEditingController? searchController;

  VarEightModel? varEightModelObj;

  @override
  List<Object?> get props => [
        searchController,
        varEightModelObj,
      ];
  VarEightState copyWith({
    TextEditingController? searchController,
    VarEightModel? varEightModelObj,
  }) {
    return VarEightState(
      searchController: searchController ?? this.searchController,
      varEightModelObj: varEightModelObj ?? this.varEightModelObj,
    );
  }
}
