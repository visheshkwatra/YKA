// ignore_for_file: must_be_immutable

part of 'profile_sixtyfive_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileSixtyfive widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileSixtyfiveEvent extends Equatable {}

/// Event that is dispatched when the ProfileSixtyfive widget is first created.
class ProfileSixtyfiveInitialEvent extends ProfileSixtyfiveEvent {
  @override
  List<Object?> get props => [];
}
