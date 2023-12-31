// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'userprofilelist1_item_model.dart';/// This class defines the variables used in the [profile_seventyeight_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ProfileSeventyeightModel extends Equatable {ProfileSeventyeightModel({this.userprofilelist1ItemList = const []}) {  }

List<Userprofilelist1ItemModel> userprofilelist1ItemList;

ProfileSeventyeightModel copyWith({List<Userprofilelist1ItemModel>? userprofilelist1ItemList}) { return ProfileSeventyeightModel(
userprofilelist1ItemList : userprofilelist1ItemList ?? this.userprofilelist1ItemList,
); } 
@override List<Object?> get props => [userprofilelist1ItemList];
 }
