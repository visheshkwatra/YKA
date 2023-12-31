// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'profilefortynine_item_model.dart';/// This class defines the variables used in the [profile_fortynine_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ProfileFortynineModel extends Equatable {ProfileFortynineModel({this.profilefortynineItemList = const []}) {  }

List<ProfilefortynineItemModel> profilefortynineItemList;

ProfileFortynineModel copyWith({List<ProfilefortynineItemModel>? profilefortynineItemList}) { return ProfileFortynineModel(
profilefortynineItemList : profilefortynineItemList ?? this.profilefortynineItemList,
); } 
@override List<Object?> get props => [profilefortynineItemList];
 }
