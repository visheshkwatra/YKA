// ignore_for_file: must_be_immutable

part of 'landing_page_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LandingPageOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LandingPageOneEvent extends Equatable {}

/// Event that is dispatched when the LandingPageOne widget is first created.
class LandingPageOneInitialEvent extends LandingPageOneEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing country code
class ChangeCountryEvent extends LandingPageOneEvent {
  ChangeCountryEvent({required this.value});

  Country value;

  @override
  List<Object?> get props => [
        value,
      ];
}
