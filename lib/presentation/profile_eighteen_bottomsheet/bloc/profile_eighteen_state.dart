// ignore_for_file: must_be_immutable

part of 'profile_eighteen_bloc.dart';

/// Represents the state of ProfileEighteen in the application.
class ProfileEighteenState extends Equatable {
  ProfileEighteenState({this.profileEighteenModelObj});

  ProfileEighteenModel? profileEighteenModelObj;

  @override
  List<Object?> get props => [
        profileEighteenModelObj,
      ];
  ProfileEighteenState copyWith(
      {ProfileEighteenModel? profileEighteenModelObj}) {
    return ProfileEighteenState(
      profileEighteenModelObj:
          profileEighteenModelObj ?? this.profileEighteenModelObj,
    );
  }
}
