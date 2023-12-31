// ignore_for_file: must_be_immutable

part of 'modal_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ModalOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ModalOneEvent extends Equatable {}

/// Event that is dispatched when the ModalOne widget is first created.
class ModalOneInitialEvent extends ModalOneEvent {
  @override
  List<Object?> get props => [];
}
