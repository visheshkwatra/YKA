// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'userprofile10_item_model.dart';/// This class defines the variables used in the [var_thirty_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.
class VarThirtyModel extends Equatable {VarThirtyModel({this.userprofile10ItemList = const []}) {  }

List<Userprofile10ItemModel> userprofile10ItemList;

VarThirtyModel copyWith({List<Userprofile10ItemModel>? userprofile10ItemList}) { return VarThirtyModel(
userprofile10ItemList : userprofile10ItemList ?? this.userprofile10ItemList,
); } 
@override List<Object?> get props => [userprofile10ItemList];
 }
