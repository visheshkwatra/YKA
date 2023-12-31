// ignore_for_file: must_be_immutable

part of 'splash_six_bloc.dart';

/// Represents the state of SplashSix in the application.
class SplashSixState extends Equatable {
  SplashSixState({this.splashSixModelObj});

  SplashSixModel? splashSixModelObj;

  @override
  List<Object?> get props => [
        splashSixModelObj,
      ];
  SplashSixState copyWith({SplashSixModel? splashSixModelObj}) {
    return SplashSixState(
      splashSixModelObj: splashSixModelObj ?? this.splashSixModelObj,
    );
  }
}
