// ignore_for_file: must_be_immutable

part of 'profile_thirty_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileThirty widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileThirtyEvent extends Equatable {}

/// Event that is dispatched when the ProfileThirty widget is first created.
class ProfileThirtyInitialEvent extends ProfileThirtyEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing country code
class ChangeCountryEvent extends ProfileThirtyEvent {
  ChangeCountryEvent({required this.value});

  Country value;

  @override
  List<Object?> get props => [
        value,
      ];
}
