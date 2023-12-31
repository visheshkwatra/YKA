// ignore_for_file: must_be_immutable

part of 'var_seven_bloc.dart';

/// Represents the state of VarSeven in the application.
class VarSevenState extends Equatable {
  VarSevenState({this.varSevenModelObj});

  VarSevenModel? varSevenModelObj;

  @override
  List<Object?> get props => [
        varSevenModelObj,
      ];
  VarSevenState copyWith({VarSevenModel? varSevenModelObj}) {
    return VarSevenState(
      varSevenModelObj: varSevenModelObj ?? this.varSevenModelObj,
    );
  }
}
