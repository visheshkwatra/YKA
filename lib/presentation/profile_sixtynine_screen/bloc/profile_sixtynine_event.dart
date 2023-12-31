// ignore_for_file: must_be_immutable

part of 'profile_sixtynine_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileSixtynine widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileSixtynineEvent extends Equatable {}

/// Event that is dispatched when the ProfileSixtynine widget is first created.
class ProfileSixtynineInitialEvent extends ProfileSixtynineEvent {
  @override
  List<Object?> get props => [];
}
