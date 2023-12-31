// ignore_for_file: must_be_immutable

part of 'profile_fiftyone_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileFiftyone widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileFiftyoneEvent extends Equatable {}

/// Event that is dispatched when the ProfileFiftyone widget is first created.
class ProfileFiftyoneInitialEvent extends ProfileFiftyoneEvent {
  @override
  List<Object?> get props => [];
}
