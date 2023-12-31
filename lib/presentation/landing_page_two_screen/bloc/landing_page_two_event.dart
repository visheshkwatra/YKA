// ignore_for_file: must_be_immutable

part of 'landing_page_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LandingPageTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LandingPageTwoEvent extends Equatable {}

/// Event that is dispatched when the LandingPageTwo widget is first created.
class LandingPageTwoInitialEvent extends LandingPageTwoEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing country code
class ChangeCountryEvent extends LandingPageTwoEvent {
  ChangeCountryEvent({required this.value});

  Country value;

  @override
  List<Object?> get props => [
        value,
      ];
}
