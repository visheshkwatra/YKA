// ignore_for_file: must_be_immutable

part of 'profile_thirtysix_bloc.dart';

/// Represents the state of ProfileThirtysix in the application.
class ProfileThirtysixState extends Equatable {
  ProfileThirtysixState({this.profileThirtysixModelObj});

  ProfileThirtysixModel? profileThirtysixModelObj;

  @override
  List<Object?> get props => [
        profileThirtysixModelObj,
      ];
  ProfileThirtysixState copyWith(
      {ProfileThirtysixModel? profileThirtysixModelObj}) {
    return ProfileThirtysixState(
      profileThirtysixModelObj:
          profileThirtysixModelObj ?? this.profileThirtysixModelObj,
    );
  }
}
