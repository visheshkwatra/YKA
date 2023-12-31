// ignore_for_file: must_be_immutable

part of 'profile_fortyeight_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileFortyeight widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileFortyeightEvent extends Equatable {}

/// Event that is dispatched when the ProfileFortyeight widget is first created.
class ProfileFortyeightInitialEvent extends ProfileFortyeightEvent {
  @override
  List<Object?> get props => [];
}
