// ignore_for_file: must_be_immutable

part of 'profile_eightyfive_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileEightyfive widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileEightyfiveEvent extends Equatable {}

/// Event that is dispatched when the ProfileEightyfive widget is first created.
class ProfileEightyfiveInitialEvent extends ProfileEightyfiveEvent {
  @override
  List<Object?> get props => [];
}
