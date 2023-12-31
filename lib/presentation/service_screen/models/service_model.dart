// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'view_item_model.dart';import '../../../core/app_export.dart';import 'userprofile2_item_model.dart';/// This class defines the variables used in the [service_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ServiceModel extends Equatable {ServiceModel({this.viewItemList = const [], this.userprofile2ItemList = const [], }) {  }

List<ViewItemModel> viewItemList;

List<Userprofile2ItemModel> userprofile2ItemList;

ServiceModel copyWith({List<ViewItemModel>? viewItemList, List<Userprofile2ItemModel>? userprofile2ItemList, }) { return ServiceModel(
viewItemList : viewItemList ?? this.viewItemList,
userprofile2ItemList : userprofile2ItemList ?? this.userprofile2ItemList,
); } 
@override List<Object?> get props => [viewItemList,userprofile2ItemList];
 }
