// ignore_for_file: must_be_immutable

part of 'profile_thirtysix_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileThirtysix widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileThirtysixEvent extends Equatable {}

/// Event that is dispatched when the ProfileThirtysix widget is first created.
class ProfileThirtysixInitialEvent extends ProfileThirtysixEvent {
  @override
  List<Object?> get props => [];
}
