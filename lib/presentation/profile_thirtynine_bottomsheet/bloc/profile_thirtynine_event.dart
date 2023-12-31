// ignore_for_file: must_be_immutable

part of 'profile_thirtynine_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileThirtynine widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileThirtynineEvent extends Equatable {}

/// Event that is dispatched when the ProfileThirtynine widget is first created.
class ProfileThirtynineInitialEvent extends ProfileThirtynineEvent {
  @override
  List<Object?> get props => [];
}
