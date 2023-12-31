// ignore_for_file: must_be_immutable

part of 'profile_fiftynine_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileFiftynine widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileFiftynineEvent extends Equatable {}

/// Event that is dispatched when the ProfileFiftynine widget is first created.
class ProfileFiftynineInitialEvent extends ProfileFiftynineEvent {
  @override
  List<Object?> get props => [];
}
