// ignore_for_file: must_be_immutable

part of 'splash_five_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SplashFive widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SplashFiveEvent extends Equatable {}

/// Event that is dispatched when the SplashFive widget is first created.
class SplashFiveInitialEvent extends SplashFiveEvent {
  @override
  List<Object?> get props => [];
}
