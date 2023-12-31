// ignore_for_file: must_be_immutable

part of 'splash_six_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SplashSix widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SplashSixEvent extends Equatable {}

/// Event that is dispatched when the SplashSix widget is first created.
class SplashSixInitialEvent extends SplashSixEvent {
  @override
  List<Object?> get props => [];
}
