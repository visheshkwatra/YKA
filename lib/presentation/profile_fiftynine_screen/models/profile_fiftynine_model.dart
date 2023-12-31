// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'bookingstext1_item_model.dart';/// This class defines the variables used in the [profile_fiftynine_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ProfileFiftynineModel extends Equatable {ProfileFiftynineModel({this.bookingstext1ItemList = const []}) {  }

List<Bookingstext1ItemModel> bookingstext1ItemList;

ProfileFiftynineModel copyWith({List<Bookingstext1ItemModel>? bookingstext1ItemList}) { return ProfileFiftynineModel(
bookingstext1ItemList : bookingstext1ItemList ?? this.bookingstext1ItemList,
); } 
@override List<Object?> get props => [bookingstext1ItemList];
 }
