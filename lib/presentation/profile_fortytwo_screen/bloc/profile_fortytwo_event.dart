// ignore_for_file: must_be_immutable

part of 'profile_fortytwo_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileFortytwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileFortytwoEvent extends Equatable {}

/// Event that is dispatched when the ProfileFortytwo widget is first created.
class ProfileFortytwoInitialEvent extends ProfileFortytwoEvent {
  @override
  List<Object?> get props => [];
}
