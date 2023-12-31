// ignore_for_file: must_be_immutable

part of 'profile_seventyfour_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileSeventyfour widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileSeventyfourEvent extends Equatable {}

/// Event that is dispatched when the ProfileSeventyfour widget is first created.
class ProfileSeventyfourInitialEvent extends ProfileSeventyfourEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing country code
class ChangeCountryEvent extends ProfileSeventyfourEvent {
  ChangeCountryEvent({required this.value});

  Country value;

  @override
  List<Object?> get props => [
        value,
      ];
}
