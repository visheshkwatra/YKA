// ignore_for_file: must_be_immutable

part of 'modal_bloc.dart';

/// Represents the state of Modal in the application.
class ModalState extends Equatable {
  ModalState({this.modalModelObj});

  ModalModel? modalModelObj;

  @override
  List<Object?> get props => [
        modalModelObj,
      ];
  ModalState copyWith({ModalModel? modalModelObj}) {
    return ModalState(
      modalModelObj: modalModelObj ?? this.modalModelObj,
    );
  }
}
