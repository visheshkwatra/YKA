// ignore_for_file: must_be_immutable

part of 'profile_sixtyseven_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileSixtyseven widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileSixtysevenEvent extends Equatable {}

/// Event that is dispatched when the ProfileSixtyseven widget is first created.
class ProfileSixtysevenInitialEvent extends ProfileSixtysevenEvent {
  @override
  List<Object?> get props => [];
}
