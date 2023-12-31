// ignore_for_file: must_be_immutable

part of 'profile_eightynine_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileEightynine widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileEightynineEvent extends Equatable {}

/// Event that is dispatched when the ProfileEightynine widget is first created.
class ProfileEightynineInitialEvent extends ProfileEightynineEvent {
  @override
  List<Object?> get props => [];
}
