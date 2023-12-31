// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'userprofilelist2_item_model.dart';/// This class defines the variables used in the [profile_eightyfour_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ProfileEightyfourModel extends Equatable {ProfileEightyfourModel({this.userprofilelist2ItemList = const []}) {  }

List<Userprofilelist2ItemModel> userprofilelist2ItemList;

ProfileEightyfourModel copyWith({List<Userprofilelist2ItemModel>? userprofilelist2ItemList}) { return ProfileEightyfourModel(
userprofilelist2ItemList : userprofilelist2ItemList ?? this.userprofilelist2ItemList,
); } 
@override List<Object?> get props => [userprofilelist2ItemList];
 }
