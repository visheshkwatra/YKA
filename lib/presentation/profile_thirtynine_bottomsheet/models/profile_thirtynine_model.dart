// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'userprofile_item_model.dart';/// This class defines the variables used in the [profile_thirtynine_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.
class ProfileThirtynineModel extends Equatable {ProfileThirtynineModel({this.userprofileItemList = const []}) {  }

List<UserprofileItemModel> userprofileItemList;

ProfileThirtynineModel copyWith({List<UserprofileItemModel>? userprofileItemList}) { return ProfileThirtynineModel(
userprofileItemList : userprofileItemList ?? this.userprofileItemList,
); } 
@override List<Object?> get props => [userprofileItemList];
 }
