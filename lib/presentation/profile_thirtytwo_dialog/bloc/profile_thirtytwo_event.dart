// ignore_for_file: must_be_immutable

part of 'profile_thirtytwo_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileThirtytwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileThirtytwoEvent extends Equatable {}

/// Event that is dispatched when the ProfileThirtytwo widget is first created.
class ProfileThirtytwoInitialEvent extends ProfileThirtytwoEvent {
  @override
  List<Object?> get props => [];
}
