// ignore_for_file: must_be_immutable

part of 'profile_fortynine_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileFortynine widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileFortynineEvent extends Equatable {}

/// Event that is dispatched when the ProfileFortynine widget is first created.
class ProfileFortynineInitialEvent extends ProfileFortynineEvent {
  @override
  List<Object?> get props => [];
}
