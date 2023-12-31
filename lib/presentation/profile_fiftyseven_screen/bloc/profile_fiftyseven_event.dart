// ignore_for_file: must_be_immutable

part of 'profile_fiftyseven_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileFiftyseven widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileFiftysevenEvent extends Equatable {}

/// Event that is dispatched when the ProfileFiftyseven widget is first created.
class ProfileFiftysevenInitialEvent extends ProfileFiftysevenEvent {
  @override
  List<Object?> get props => [];
}
