// ignore_for_file: must_be_immutable

part of 'profile_eightythree_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileEightythree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileEightythreeEvent extends Equatable {}

/// Event that is dispatched when the ProfileEightythree widget is first created.
class ProfileEightythreeInitialEvent extends ProfileEightythreeEvent {
  @override
  List<Object?> get props => [];
}
