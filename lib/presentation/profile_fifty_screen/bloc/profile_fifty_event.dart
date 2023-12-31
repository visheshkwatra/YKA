// ignore_for_file: must_be_immutable

part of 'profile_fifty_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileFifty widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileFiftyEvent extends Equatable {}

/// Event that is dispatched when the ProfileFifty widget is first created.
class ProfileFiftyInitialEvent extends ProfileFiftyEvent {
  @override
  List<Object?> get props => [];
}
