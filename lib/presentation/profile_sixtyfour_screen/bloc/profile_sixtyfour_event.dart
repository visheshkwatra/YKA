// ignore_for_file: must_be_immutable

part of 'profile_sixtyfour_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileSixtyfour widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileSixtyfourEvent extends Equatable {}

/// Event that is dispatched when the ProfileSixtyfour widget is first created.
class ProfileSixtyfourInitialEvent extends ProfileSixtyfourEvent {
  @override
  List<Object?> get props => [];
}
