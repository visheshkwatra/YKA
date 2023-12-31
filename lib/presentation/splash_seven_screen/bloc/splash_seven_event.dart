// ignore_for_file: must_be_immutable

part of 'splash_seven_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SplashSeven widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SplashSevenEvent extends Equatable {}

/// Event that is dispatched when the SplashSeven widget is first created.
class SplashSevenInitialEvent extends SplashSevenEvent {
  @override
  List<Object?> get props => [];
}
