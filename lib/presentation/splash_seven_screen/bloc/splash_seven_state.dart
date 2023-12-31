// ignore_for_file: must_be_immutable

part of 'splash_seven_bloc.dart';

/// Represents the state of SplashSeven in the application.
class SplashSevenState extends Equatable {
  SplashSevenState({this.splashSevenModelObj});

  SplashSevenModel? splashSevenModelObj;

  @override
  List<Object?> get props => [
        splashSevenModelObj,
      ];
  SplashSevenState copyWith({SplashSevenModel? splashSevenModelObj}) {
    return SplashSevenState(
      splashSevenModelObj: splashSevenModelObj ?? this.splashSevenModelObj,
    );
  }
}
