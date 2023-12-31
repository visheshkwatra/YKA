// ignore_for_file: must_be_immutable

part of 'profile_twentyone_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileTwentyone widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileTwentyoneEvent extends Equatable {}

/// Event that is dispatched when the ProfileTwentyone widget is first created.
class ProfileTwentyoneInitialEvent extends ProfileTwentyoneEvent {
  @override
  List<Object?> get props => [];
}
