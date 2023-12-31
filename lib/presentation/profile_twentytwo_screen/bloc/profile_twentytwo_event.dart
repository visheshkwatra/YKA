// ignore_for_file: must_be_immutable

part of 'profile_twentytwo_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileTwentytwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileTwentytwoEvent extends Equatable {}

/// Event that is dispatched when the ProfileTwentytwo widget is first created.
class ProfileTwentytwoInitialEvent extends ProfileTwentytwoEvent {
  @override
  List<Object?> get props => [];
}
