// ignore_for_file: must_be_immutable

part of 'profile_fortythree_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileFortythree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileFortythreeEvent extends Equatable {}

/// Event that is dispatched when the ProfileFortythree widget is first created.
class ProfileFortythreeInitialEvent extends ProfileFortythreeEvent {
  @override
  List<Object?> get props => [];
}
