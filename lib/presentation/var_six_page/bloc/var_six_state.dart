// ignore_for_file: must_be_immutable

part of 'var_six_bloc.dart';

/// Represents the state of VarSix in the application.
class VarSixState extends Equatable {
  VarSixState({
    this.searchController,
    this.varSixModelObj,
  });

  TextEditingController? searchController;

  VarSixModel? varSixModelObj;

  @override
  List<Object?> get props => [
        searchController,
        varSixModelObj,
      ];
  VarSixState copyWith({
    TextEditingController? searchController,
    VarSixModel? varSixModelObj,
  }) {
    return VarSixState(
      searchController: searchController ?? this.searchController,
      varSixModelObj: varSixModelObj ?? this.varSixModelObj,
    );
  }
}
