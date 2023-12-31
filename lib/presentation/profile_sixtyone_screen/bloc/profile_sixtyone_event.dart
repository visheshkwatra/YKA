// ignore_for_file: must_be_immutable

part of 'profile_sixtyone_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileSixtyone widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileSixtyoneEvent extends Equatable {}

/// Event that is dispatched when the ProfileSixtyone widget is first created.
class ProfileSixtyoneInitialEvent extends ProfileSixtyoneEvent {
  @override
  List<Object?> get props => [];
}
