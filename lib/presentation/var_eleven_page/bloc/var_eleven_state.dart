// ignore_for_file: must_be_immutable

part of 'var_eleven_bloc.dart';

/// Represents the state of VarEleven in the application.
class VarElevenState extends Equatable {
  VarElevenState({this.varElevenModelObj});

  VarElevenModel? varElevenModelObj;

  @override
  List<Object?> get props => [
        varElevenModelObj,
      ];
  VarElevenState copyWith({VarElevenModel? varElevenModelObj}) {
    return VarElevenState(
      varElevenModelObj: varElevenModelObj ?? this.varElevenModelObj,
    );
  }
}
