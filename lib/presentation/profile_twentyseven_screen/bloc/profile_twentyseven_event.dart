// ignore_for_file: must_be_immutable

part of 'profile_twentyseven_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileTwentyseven widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileTwentysevenEvent extends Equatable {}

/// Event that is dispatched when the ProfileTwentyseven widget is first created.
class ProfileTwentysevenInitialEvent extends ProfileTwentysevenEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing country code
class ChangeCountryEvent extends ProfileTwentysevenEvent {
  ChangeCountryEvent({required this.value});

  Country value;

  @override
  List<Object?> get props => [
        value,
      ];
}
