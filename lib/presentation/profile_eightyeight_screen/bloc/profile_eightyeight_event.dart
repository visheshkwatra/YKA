// ignore_for_file: must_be_immutable

part of 'profile_eightyeight_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileEightyeight widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileEightyeightEvent extends Equatable {}

/// Event that is dispatched when the ProfileEightyeight widget is first created.
class ProfileEightyeightInitialEvent extends ProfileEightyeightEvent {
  @override
  List<Object?> get props => [];
}
