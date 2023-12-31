// ignore_for_file: must_be_immutable

part of 'profile_seventyfive_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileSeventyfive widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileSeventyfiveEvent extends Equatable {}

/// Event that is dispatched when the ProfileSeventyfive widget is first created.
class ProfileSeventyfiveInitialEvent extends ProfileSeventyfiveEvent {
  @override
  List<Object?> get props => [];
}
