// ignore_for_file: must_be_immutable

part of 'profile_thirtyeight_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileThirtyeight widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileThirtyeightEvent extends Equatable {}

/// Event that is dispatched when the ProfileThirtyeight widget is first created.
class ProfileThirtyeightInitialEvent extends ProfileThirtyeightEvent {
  @override
  List<Object?> get props => [];
}
