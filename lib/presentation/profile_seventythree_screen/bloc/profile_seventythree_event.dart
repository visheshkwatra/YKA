// ignore_for_file: must_be_immutable

part of 'profile_seventythree_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileSeventythree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileSeventythreeEvent extends Equatable {}

/// Event that is dispatched when the ProfileSeventythree widget is first created.
class ProfileSeventythreeInitialEvent extends ProfileSeventythreeEvent {
  @override
  List<Object?> get props => [];
}
