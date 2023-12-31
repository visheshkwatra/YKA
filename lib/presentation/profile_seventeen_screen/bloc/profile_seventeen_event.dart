// ignore_for_file: must_be_immutable

part of 'profile_seventeen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileSeventeen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileSeventeenEvent extends Equatable {}

/// Event that is dispatched when the ProfileSeventeen widget is first created.
class ProfileSeventeenInitialEvent extends ProfileSeventeenEvent {
  @override
  List<Object?> get props => [];
}
