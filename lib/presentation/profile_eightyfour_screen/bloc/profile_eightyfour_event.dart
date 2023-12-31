// ignore_for_file: must_be_immutable

part of 'profile_eightyfour_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileEightyfour widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileEightyfourEvent extends Equatable {}

/// Event that is dispatched when the ProfileEightyfour widget is first created.
class ProfileEightyfourInitialEvent extends ProfileEightyfourEvent {
  @override
  List<Object?> get props => [];
}
