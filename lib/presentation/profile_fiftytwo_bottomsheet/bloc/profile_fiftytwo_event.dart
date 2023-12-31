// ignore_for_file: must_be_immutable

part of 'profile_fiftytwo_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileFiftytwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileFiftytwoEvent extends Equatable {}

/// Event that is dispatched when the ProfileFiftytwo widget is first created.
class ProfileFiftytwoInitialEvent extends ProfileFiftytwoEvent {
  @override
  List<Object?> get props => [];
}
