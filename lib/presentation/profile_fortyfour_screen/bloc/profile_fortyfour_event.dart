// ignore_for_file: must_be_immutable

part of 'profile_fortyfour_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileFortyfour widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileFortyfourEvent extends Equatable {}

/// Event that is dispatched when the ProfileFortyfour widget is first created.
class ProfileFortyfourInitialEvent extends ProfileFortyfourEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing country code
class ChangeCountryEvent extends ProfileFortyfourEvent {
  ChangeCountryEvent({required this.value});

  Country value;

  @override
  List<Object?> get props => [
        value,
      ];
}
