// ignore_for_file: must_be_immutable

part of 'profile_seventyseven_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileSeventyseven widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileSeventysevenEvent extends Equatable {}

/// Event that is dispatched when the ProfileSeventyseven widget is first created.
class ProfileSeventysevenInitialEvent extends ProfileSeventysevenEvent {
  @override
  List<Object?> get props => [];
}
