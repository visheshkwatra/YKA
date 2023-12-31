// ignore_for_file: must_be_immutable

part of 'profile_twentyeight_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileTwentyeight widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileTwentyeightEvent extends Equatable {}

/// Event that is dispatched when the ProfileTwentyeight widget is first created.
class ProfileTwentyeightInitialEvent extends ProfileTwentyeightEvent {
  @override
  List<Object?> get props => [];
}
