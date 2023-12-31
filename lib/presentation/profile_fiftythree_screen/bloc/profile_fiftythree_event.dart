// ignore_for_file: must_be_immutable

part of 'profile_fiftythree_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileFiftythree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileFiftythreeEvent extends Equatable {}

/// Event that is dispatched when the ProfileFiftythree widget is first created.
class ProfileFiftythreeInitialEvent extends ProfileFiftythreeEvent {
  @override
  List<Object?> get props => [];
}
