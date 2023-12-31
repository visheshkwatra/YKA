// ignore_for_file: must_be_immutable

part of 'profile_thirtyfour_bloc.dart';

/// Represents the state of ProfileThirtyfour in the application.
class ProfileThirtyfourState extends Equatable {
  ProfileThirtyfourState({this.profileThirtyfourModelObj});

  ProfileThirtyfourModel? profileThirtyfourModelObj;

  @override
  List<Object?> get props => [
        profileThirtyfourModelObj,
      ];
  ProfileThirtyfourState copyWith(
      {ProfileThirtyfourModel? profileThirtyfourModelObj}) {
    return ProfileThirtyfourState(
      profileThirtyfourModelObj:
          profileThirtyfourModelObj ?? this.profileThirtyfourModelObj,
    );
  }
}
