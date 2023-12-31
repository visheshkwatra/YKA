// ignore_for_file: must_be_immutable

part of 'modal_one_bloc.dart';

/// Represents the state of ModalOne in the application.
class ModalOneState extends Equatable {
  ModalOneState({this.modalOneModelObj});

  ModalOneModel? modalOneModelObj;

  @override
  List<Object?> get props => [
        modalOneModelObj,
      ];
  ModalOneState copyWith({ModalOneModel? modalOneModelObj}) {
    return ModalOneState(
      modalOneModelObj: modalOneModelObj ?? this.modalOneModelObj,
    );
  }
}
