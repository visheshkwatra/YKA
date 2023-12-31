// ignore_for_file: must_be_immutable

part of 'profile_thirteen_bloc.dart';

/// Represents the state of ProfileThirteen in the application.
class ProfileThirteenState extends Equatable {
  ProfileThirteenState({this.profileThirteenModelObj});

  ProfileThirteenModel? profileThirteenModelObj;

  @override
  List<Object?> get props => [
        profileThirteenModelObj,
      ];
  ProfileThirteenState copyWith(
      {ProfileThirteenModel? profileThirteenModelObj}) {
    return ProfileThirteenState(
      profileThirteenModelObj:
          profileThirteenModelObj ?? this.profileThirteenModelObj,
    );
  }
}
