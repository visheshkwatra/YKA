// ignore_for_file: must_be_immutable

part of 'profile_ten_bloc.dart';

/// Represents the state of ProfileTen in the application.
class ProfileTenState extends Equatable {
  ProfileTenState({this.profileTenModelObj});

  ProfileTenModel? profileTenModelObj;

  @override
  List<Object?> get props => [
        profileTenModelObj,
      ];
  ProfileTenState copyWith({ProfileTenModel? profileTenModelObj}) {
    return ProfileTenState(
      profileTenModelObj: profileTenModelObj ?? this.profileTenModelObj,
    );
  }
}
