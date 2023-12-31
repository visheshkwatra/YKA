// ignore_for_file: must_be_immutable

part of 'var_fiftyfour_bloc.dart';

/// Represents the state of VarFiftyfour in the application.
class VarFiftyfourState extends Equatable {
  VarFiftyfourState({this.varFiftyfourModelObj});

  VarFiftyfourModel? varFiftyfourModelObj;

  @override
  List<Object?> get props => [
        varFiftyfourModelObj,
      ];
  VarFiftyfourState copyWith({VarFiftyfourModel? varFiftyfourModelObj}) {
    return VarFiftyfourState(
      varFiftyfourModelObj: varFiftyfourModelObj ?? this.varFiftyfourModelObj,
    );
  }
}
