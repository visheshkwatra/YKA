// ignore_for_file: must_be_immutable

part of 'profile_sixtythree_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileSixtythree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileSixtythreeEvent extends Equatable {}

/// Event that is dispatched when the ProfileSixtythree widget is first created.
class ProfileSixtythreeInitialEvent extends ProfileSixtythreeEvent {
  @override
  List<Object?> get props => [];
}
