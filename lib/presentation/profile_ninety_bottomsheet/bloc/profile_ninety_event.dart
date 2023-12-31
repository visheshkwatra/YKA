// ignore_for_file: must_be_immutable

part of 'profile_ninety_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileNinety widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileNinetyEvent extends Equatable {}

/// Event that is dispatched when the ProfileNinety widget is first created.
class ProfileNinetyInitialEvent extends ProfileNinetyEvent {
  @override
  List<Object?> get props => [];
}
