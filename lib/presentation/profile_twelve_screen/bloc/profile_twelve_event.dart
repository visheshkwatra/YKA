// ignore_for_file: must_be_immutable

part of 'profile_twelve_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileTwelve widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileTwelveEvent extends Equatable {}

/// Event that is dispatched when the ProfileTwelve widget is first created.
class ProfileTwelveInitialEvent extends ProfileTwelveEvent {
  @override
  List<Object?> get props => [];
}
