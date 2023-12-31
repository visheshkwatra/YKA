// ignore_for_file: must_be_immutable

part of 'profile_sixtytwo_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileSixtytwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileSixtytwoEvent extends Equatable {}

/// Event that is dispatched when the ProfileSixtytwo widget is first created.
class ProfileSixtytwoInitialEvent extends ProfileSixtytwoEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing country code
class ChangeCountryEvent extends ProfileSixtytwoEvent {
  ChangeCountryEvent({required this.value});

  Country value;

  @override
  List<Object?> get props => [
        value,
      ];
}
