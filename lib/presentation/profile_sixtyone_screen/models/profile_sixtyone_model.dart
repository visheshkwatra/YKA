// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'userprofile9_item_model.dart';/// This class defines the variables used in the [profile_sixtyone_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ProfileSixtyoneModel extends Equatable {ProfileSixtyoneModel({this.userprofile9ItemList = const []}) {  }

List<Userprofile9ItemModel> userprofile9ItemList;

ProfileSixtyoneModel copyWith({List<Userprofile9ItemModel>? userprofile9ItemList}) { return ProfileSixtyoneModel(
userprofile9ItemList : userprofile9ItemList ?? this.userprofile9ItemList,
); } 
@override List<Object?> get props => [userprofile9ItemList];
 }
