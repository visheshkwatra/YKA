// ignore_for_file: must_be_immutable

part of 'profile_eleven_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileEleven widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileElevenEvent extends Equatable {}

/// Event that is dispatched when the ProfileEleven widget is first created.
class ProfileElevenInitialEvent extends ProfileElevenEvent {
  @override
  List<Object?> get props => [];
}
