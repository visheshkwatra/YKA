// ignore_for_file: must_be_immutable

part of 'profile_forty_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileForty widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileFortyEvent extends Equatable {}

/// Event that is dispatched when the ProfileForty widget is first created.
class ProfileFortyInitialEvent extends ProfileFortyEvent {
  @override
  List<Object?> get props => [];
}
