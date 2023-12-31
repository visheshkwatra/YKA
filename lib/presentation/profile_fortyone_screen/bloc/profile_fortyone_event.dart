// ignore_for_file: must_be_immutable

part of 'profile_fortyone_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileFortyone widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileFortyoneEvent extends Equatable {}

/// Event that is dispatched when the ProfileFortyone widget is first created.
class ProfileFortyoneInitialEvent extends ProfileFortyoneEvent {
  @override
  List<Object?> get props => [];
}
