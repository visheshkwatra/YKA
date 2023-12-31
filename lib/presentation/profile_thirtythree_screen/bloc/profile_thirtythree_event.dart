// ignore_for_file: must_be_immutable

part of 'profile_thirtythree_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileThirtythree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileThirtythreeEvent extends Equatable {}

/// Event that is dispatched when the ProfileThirtythree widget is first created.
class ProfileThirtythreeInitialEvent extends ProfileThirtythreeEvent {
  @override
  List<Object?> get props => [];
}
