// ignore_for_file: must_be_immutable

part of 'my_favourties_details_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyFavourtiesDetails widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MyFavourtiesDetailsEvent extends Equatable {}

/// Event that is dispatched when the MyFavourtiesDetails widget is first created.
class MyFavourtiesDetailsInitialEvent extends MyFavourtiesDetailsEvent {
  @override
  List<Object?> get props => [];
}
