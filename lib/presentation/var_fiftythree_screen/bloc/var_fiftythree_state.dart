// ignore_for_file: must_be_immutable

part of 'var_fiftythree_bloc.dart';

/// Represents the state of VarFiftythree in the application.
class VarFiftythreeState extends Equatable {
  VarFiftythreeState({this.varFiftythreeModelObj});

  VarFiftythreeModel? varFiftythreeModelObj;

  @override
  List<Object?> get props => [
        varFiftythreeModelObj,
      ];
  VarFiftythreeState copyWith({VarFiftythreeModel? varFiftythreeModelObj}) {
    return VarFiftythreeState(
      varFiftythreeModelObj:
          varFiftythreeModelObj ?? this.varFiftythreeModelObj,
    );
  }
}
