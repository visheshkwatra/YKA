// ignore_for_file: must_be_immutable

part of 'var_eleven_container_bloc.dart';

/// Represents the state of VarElevenContainer in the application.
class VarElevenContainerState extends Equatable {
  VarElevenContainerState({this.varElevenContainerModelObj});

  VarElevenContainerModel? varElevenContainerModelObj;

  @override
  List<Object?> get props => [
        varElevenContainerModelObj,
      ];
  VarElevenContainerState copyWith(
      {VarElevenContainerModel? varElevenContainerModelObj}) {
    return VarElevenContainerState(
      varElevenContainerModelObj:
          varElevenContainerModelObj ?? this.varElevenContainerModelObj,
    );
  }
}
