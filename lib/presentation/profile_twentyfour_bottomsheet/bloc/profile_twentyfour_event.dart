// ignore_for_file: must_be_immutable

part of 'profile_twentyfour_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileTwentyfour widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileTwentyfourEvent extends Equatable {}

/// Event that is dispatched when the ProfileTwentyfour widget is first created.
class ProfileTwentyfourInitialEvent extends ProfileTwentyfourEvent {
  @override
  List<Object?> get props => [];
}
