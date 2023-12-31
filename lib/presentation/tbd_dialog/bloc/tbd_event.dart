// ignore_for_file: must_be_immutable

part of 'tbd_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Tbd widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TbdEvent extends Equatable {}

/// Event that is dispatched when the Tbd widget is first created.
class TbdInitialEvent extends TbdEvent {
  @override
  List<Object?> get props => [];
}
