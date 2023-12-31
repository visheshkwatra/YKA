// ignore_for_file: must_be_immutable

part of 'profile_sixtyeight_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileSixtyeight widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileSixtyeightEvent extends Equatable {}

/// Event that is dispatched when the ProfileSixtyeight widget is first created.
class ProfileSixtyeightInitialEvent extends ProfileSixtyeightEvent {
  @override
  List<Object?> get props => [];
}
