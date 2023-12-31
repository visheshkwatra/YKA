// ignore_for_file: must_be_immutable

part of 'my_favourties_details_one_bloc.dart';

/// Represents the state of MyFavourtiesDetailsOne in the application.
class MyFavourtiesDetailsOneState extends Equatable {
  MyFavourtiesDetailsOneState({this.myFavourtiesDetailsOneModelObj});

  MyFavourtiesDetailsOneModel? myFavourtiesDetailsOneModelObj;

  @override
  List<Object?> get props => [
        myFavourtiesDetailsOneModelObj,
      ];
  MyFavourtiesDetailsOneState copyWith(
      {MyFavourtiesDetailsOneModel? myFavourtiesDetailsOneModelObj}) {
    return MyFavourtiesDetailsOneState(
      myFavourtiesDetailsOneModelObj:
          myFavourtiesDetailsOneModelObj ?? this.myFavourtiesDetailsOneModelObj,
    );
  }
}
