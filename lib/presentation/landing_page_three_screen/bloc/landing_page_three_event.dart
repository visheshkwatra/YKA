// ignore_for_file: must_be_immutable

part of 'landing_page_three_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LandingPageThree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LandingPageThreeEvent extends Equatable {}

/// Event that is dispatched when the LandingPageThree widget is first created.
class LandingPageThreeInitialEvent extends LandingPageThreeEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing country code
class ChangeCountryEvent extends LandingPageThreeEvent {
  ChangeCountryEvent({required this.value});

  Country value;

  @override
  List<Object?> get props => [
        value,
      ];
}
