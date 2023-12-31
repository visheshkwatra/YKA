// ignore_for_file: must_be_immutable

part of 'profile_twentynine_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileTwentynine widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileTwentynineEvent extends Equatable {}

/// Event that is dispatched when the ProfileTwentynine widget is first created.
class ProfileTwentynineInitialEvent extends ProfileTwentynineEvent {
  @override
  List<Object?> get props => [];
}
