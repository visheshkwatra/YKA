// ignore_for_file: must_be_immutable

part of 'profile_sixty_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileSixty widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileSixtyEvent extends Equatable {}

/// Event that is dispatched when the ProfileSixty widget is first created.
class ProfileSixtyInitialEvent extends ProfileSixtyEvent {
  @override
  List<Object?> get props => [];
}
