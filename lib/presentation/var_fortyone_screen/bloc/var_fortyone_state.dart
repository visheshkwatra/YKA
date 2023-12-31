// ignore_for_file: must_be_immutable

part of 'var_fortyone_bloc.dart';

/// Represents the state of VarFortyone in the application.
class VarFortyoneState extends Equatable {
  VarFortyoneState({
    this.searchController,
    this.varFortyoneModelObj,
  });

  TextEditingController? searchController;

  VarFortyoneModel? varFortyoneModelObj;

  @override
  List<Object?> get props => [
        searchController,
        varFortyoneModelObj,
      ];
  VarFortyoneState copyWith({
    TextEditingController? searchController,
    VarFortyoneModel? varFortyoneModelObj,
  }) {
    return VarFortyoneState(
      searchController: searchController ?? this.searchController,
      varFortyoneModelObj: varFortyoneModelObj ?? this.varFortyoneModelObj,
    );
  }
}
