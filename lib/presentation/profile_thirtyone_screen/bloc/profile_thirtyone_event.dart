// ignore_for_file: must_be_immutable

part of 'profile_thirtyone_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileThirtyone widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileThirtyoneEvent extends Equatable {}

/// Event that is dispatched when the ProfileThirtyone widget is first created.
class ProfileThirtyoneInitialEvent extends ProfileThirtyoneEvent {
  @override
  List<Object?> get props => [];
}
