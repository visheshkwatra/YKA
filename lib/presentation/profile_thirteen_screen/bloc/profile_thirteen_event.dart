// ignore_for_file: must_be_immutable

part of 'profile_thirteen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileThirteen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileThirteenEvent extends Equatable {}

/// Event that is dispatched when the ProfileThirteen widget is first created.
class ProfileThirteenInitialEvent extends ProfileThirteenEvent {
  @override
  List<Object?> get props => [];
}
