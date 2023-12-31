// ignore_for_file: must_be_immutable

part of 'profile_fortysix_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileFortysix widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileFortysixEvent extends Equatable {}

/// Event that is dispatched when the ProfileFortysix widget is first created.
class ProfileFortysixInitialEvent extends ProfileFortysixEvent {
  @override
  List<Object?> get props => [];
}
