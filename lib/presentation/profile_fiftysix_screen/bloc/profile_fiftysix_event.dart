// ignore_for_file: must_be_immutable

part of 'profile_fiftysix_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileFiftysix widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileFiftysixEvent extends Equatable {}

/// Event that is dispatched when the ProfileFiftysix widget is first created.
class ProfileFiftysixInitialEvent extends ProfileFiftysixEvent {
  @override
  List<Object?> get props => [];
}
