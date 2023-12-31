// ignore_for_file: must_be_immutable

part of 'profile_thirtyfour_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileThirtyfour widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileThirtyfourEvent extends Equatable {}

/// Event that is dispatched when the ProfileThirtyfour widget is first created.
class ProfileThirtyfourInitialEvent extends ProfileThirtyfourEvent {
  @override
  List<Object?> get props => [];
}
