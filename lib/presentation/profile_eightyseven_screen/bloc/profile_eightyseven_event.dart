// ignore_for_file: must_be_immutable

part of 'profile_eightyseven_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileEightyseven widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileEightysevenEvent extends Equatable {}

/// Event that is dispatched when the ProfileEightyseven widget is first created.
class ProfileEightysevenInitialEvent extends ProfileEightysevenEvent {
  @override
  List<Object?> get props => [];
}
