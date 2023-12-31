// ignore_for_file: must_be_immutable

part of 'profile_thirtyfive_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileThirtyfive widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileThirtyfiveEvent extends Equatable {}

/// Event that is dispatched when the ProfileThirtyfive widget is first created.
class ProfileThirtyfiveInitialEvent extends ProfileThirtyfiveEvent {
  @override
  List<Object?> get props => [];
}
