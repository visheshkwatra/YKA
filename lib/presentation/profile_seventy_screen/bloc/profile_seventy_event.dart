// ignore_for_file: must_be_immutable

part of 'profile_seventy_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileSeventy widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileSeventyEvent extends Equatable {}

/// Event that is dispatched when the ProfileSeventy widget is first created.
class ProfileSeventyInitialEvent extends ProfileSeventyEvent {
  @override
  List<Object?> get props => [];
}
