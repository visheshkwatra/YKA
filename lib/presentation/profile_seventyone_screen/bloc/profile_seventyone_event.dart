// ignore_for_file: must_be_immutable

part of 'profile_seventyone_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileSeventyone widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileSeventyoneEvent extends Equatable {}

/// Event that is dispatched when the ProfileSeventyone widget is first created.
class ProfileSeventyoneInitialEvent extends ProfileSeventyoneEvent {
  @override
  List<Object?> get props => [];
}
