// ignore_for_file: must_be_immutable

part of 'profile_sixtysix_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileSixtysix widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileSixtysixEvent extends Equatable {}

/// Event that is dispatched when the ProfileSixtysix widget is first created.
class ProfileSixtysixInitialEvent extends ProfileSixtysixEvent {
  @override
  List<Object?> get props => [];
}
