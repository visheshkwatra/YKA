// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'userprofile3_item_model.dart';/// This class defines the variables used in the [profile_eightythree_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ProfileEightythreeModel extends Equatable {ProfileEightythreeModel({this.userprofile3ItemList = const []}) {  }

List<Userprofile3ItemModel> userprofile3ItemList;

ProfileEightythreeModel copyWith({List<Userprofile3ItemModel>? userprofile3ItemList}) { return ProfileEightythreeModel(
userprofile3ItemList : userprofile3ItemList ?? this.userprofile3ItemList,
); } 
@override List<Object?> get props => [userprofile3ItemList];
 }
