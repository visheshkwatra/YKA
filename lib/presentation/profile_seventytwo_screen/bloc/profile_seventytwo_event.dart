// ignore_for_file: must_be_immutable

part of 'profile_seventytwo_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileSeventytwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileSeventytwoEvent extends Equatable {}

/// Event that is dispatched when the ProfileSeventytwo widget is first created.
class ProfileSeventytwoInitialEvent extends ProfileSeventytwoEvent {
  @override
  List<Object?> get props => [];
}
