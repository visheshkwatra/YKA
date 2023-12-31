// ignore_for_file: must_be_immutable

part of 'modal_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Modal widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ModalEvent extends Equatable {}

/// Event that is dispatched when the Modal widget is first created.
class ModalInitialEvent extends ModalEvent {
  @override
  List<Object?> get props => [];
}
