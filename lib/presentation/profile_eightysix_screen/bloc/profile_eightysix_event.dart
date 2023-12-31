// ignore_for_file: must_be_immutable

part of 'profile_eightysix_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileEightysix widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileEightysixEvent extends Equatable {}

/// Event that is dispatched when the ProfileEightysix widget is first created.
class ProfileEightysixInitialEvent extends ProfileEightysixEvent {
  @override
  List<Object?> get props => [];
}
