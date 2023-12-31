// ignore_for_file: must_be_immutable

part of 'profile_fiftyfive_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileFiftyfive widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileFiftyfiveEvent extends Equatable {}

/// Event that is dispatched when the ProfileFiftyfive widget is first created.
class ProfileFiftyfiveInitialEvent extends ProfileFiftyfiveEvent {
  @override
  List<Object?> get props => [];
}
