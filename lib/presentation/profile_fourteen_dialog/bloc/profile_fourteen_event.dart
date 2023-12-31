// ignore_for_file: must_be_immutable

part of 'profile_fourteen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileFourteen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileFourteenEvent extends Equatable {}

/// Event that is dispatched when the ProfileFourteen widget is first created.
class ProfileFourteenInitialEvent extends ProfileFourteenEvent {
  @override
  List<Object?> get props => [];
}
