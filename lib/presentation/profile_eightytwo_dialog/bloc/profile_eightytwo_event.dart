// ignore_for_file: must_be_immutable

part of 'profile_eightytwo_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileEightytwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileEightytwoEvent extends Equatable {}

/// Event that is dispatched when the ProfileEightytwo widget is first created.
class ProfileEightytwoInitialEvent extends ProfileEightytwoEvent {
  @override
  List<Object?> get props => [];
}
