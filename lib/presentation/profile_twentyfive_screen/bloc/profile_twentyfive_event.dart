// ignore_for_file: must_be_immutable

part of 'profile_twentyfive_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileTwentyfive widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileTwentyfiveEvent extends Equatable {}

/// Event that is dispatched when the ProfileTwentyfive widget is first created.
class ProfileTwentyfiveInitialEvent extends ProfileTwentyfiveEvent {
  @override
  List<Object?> get props => [];
}
