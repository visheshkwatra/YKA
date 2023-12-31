// ignore_for_file: must_be_immutable

part of 'my_favourties_details_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyFavourtiesDetailsOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MyFavourtiesDetailsOneEvent extends Equatable {}

/// Event that is dispatched when the MyFavourtiesDetailsOne widget is first created.
class MyFavourtiesDetailsOneInitialEvent extends MyFavourtiesDetailsOneEvent {
  @override
  List<Object?> get props => [];
}
