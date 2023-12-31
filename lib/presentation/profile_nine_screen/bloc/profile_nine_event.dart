// ignore_for_file: must_be_immutable

part of 'profile_nine_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileNine widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileNineEvent extends Equatable {}

/// Event that is dispatched when the ProfileNine widget is first created.
class ProfileNineInitialEvent extends ProfileNineEvent {
  @override
  List<Object?> get props => [];
}
