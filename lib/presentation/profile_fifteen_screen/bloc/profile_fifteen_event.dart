// ignore_for_file: must_be_immutable

part of 'profile_fifteen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileFifteen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileFifteenEvent extends Equatable {}

/// Event that is dispatched when the ProfileFifteen widget is first created.
class ProfileFifteenInitialEvent extends ProfileFifteenEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing country code
class ChangeCountryEvent extends ProfileFifteenEvent {
  ChangeCountryEvent({required this.value});

  Country value;

  @override
  List<Object?> get props => [
        value,
      ];
}
