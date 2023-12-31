// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'userprofile6_item_model.dart';/// This class defines the variables used in the [profile_fiftysix_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ProfileFiftysixModel extends Equatable {ProfileFiftysixModel({this.userprofile6ItemList = const []}) {  }

List<Userprofile6ItemModel> userprofile6ItemList;

ProfileFiftysixModel copyWith({List<Userprofile6ItemModel>? userprofile6ItemList}) { return ProfileFiftysixModel(
userprofile6ItemList : userprofile6ItemList ?? this.userprofile6ItemList,
); } 
@override List<Object?> get props => [userprofile6ItemList];
 }
