// ignore_for_file: must_be_immutable

part of 'profile_ten_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileTen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileTenEvent extends Equatable {}

/// Event that is dispatched when the ProfileTen widget is first created.
class ProfileTenInitialEvent extends ProfileTenEvent {
  @override
  List<Object?> get props => [];
}
