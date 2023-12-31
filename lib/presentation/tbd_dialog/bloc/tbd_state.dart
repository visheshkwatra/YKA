// ignore_for_file: must_be_immutable

part of 'tbd_bloc.dart';

/// Represents the state of Tbd in the application.
class TbdState extends Equatable {
  TbdState({this.tbdModelObj});

  TbdModel? tbdModelObj;

  @override
  List<Object?> get props => [
        tbdModelObj,
      ];
  TbdState copyWith({TbdModel? tbdModelObj}) {
    return TbdState(
      tbdModelObj: tbdModelObj ?? this.tbdModelObj,
    );
  }
}
