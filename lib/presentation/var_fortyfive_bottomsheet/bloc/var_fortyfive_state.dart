// ignore_for_file: must_be_immutable

part of 'var_fortyfive_bloc.dart';

/// Represents the state of VarFortyfive in the application.
class VarFortyfiveState extends Equatable {
  VarFortyfiveState({this.varFortyfiveModelObj});

  VarFortyfiveModel? varFortyfiveModelObj;

  @override
  List<Object?> get props => [
        varFortyfiveModelObj,
      ];
  VarFortyfiveState copyWith({VarFortyfiveModel? varFortyfiveModelObj}) {
    return VarFortyfiveState(
      varFortyfiveModelObj: varFortyfiveModelObj ?? this.varFortyfiveModelObj,
    );
  }
}
