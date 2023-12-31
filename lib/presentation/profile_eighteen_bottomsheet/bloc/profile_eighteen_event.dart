// ignore_for_file: must_be_immutable

part of 'profile_eighteen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileEighteen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileEighteenEvent extends Equatable {}

/// Event that is dispatched when the ProfileEighteen widget is first created.
class ProfileEighteenInitialEvent extends ProfileEighteenEvent {
  @override
  List<Object?> get props => [];
}
