// ignore_for_file: must_be_immutable

part of 'profile_sixteen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileSixteen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileSixteenEvent extends Equatable {}

/// Event that is dispatched when the ProfileSixteen widget is first created.
class ProfileSixteenInitialEvent extends ProfileSixteenEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing country code
class ChangeCountryEvent extends ProfileSixteenEvent {
  ChangeCountryEvent({required this.value});

  Country value;

  @override
  List<Object?> get props => [
        value,
      ];
}
