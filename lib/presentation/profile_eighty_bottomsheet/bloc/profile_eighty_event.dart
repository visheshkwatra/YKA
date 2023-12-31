// ignore_for_file: must_be_immutable

part of 'profile_eighty_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileEighty widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileEightyEvent extends Equatable {}

/// Event that is dispatched when the ProfileEighty widget is first created.
class ProfileEightyInitialEvent extends ProfileEightyEvent {
  @override
  List<Object?> get props => [];
}
