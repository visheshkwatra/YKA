// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'userprofile1_item_model.dart';import 'widget2_item_model.dart';import 'recentlyviewed_item_model.dart';import 'explorecarscomponent_item_model.dart';/// This class defines the variables used in the [var_eleven_tab_container_page],
/// and is typically used to hold data that is passed between different parts of the application.
class VarElevenTabContainerModel extends Equatable {VarElevenTabContainerModel({this.userprofile1ItemList = const [], this.widget2ItemList = const [], this.recentlyviewedItemList = const [], this.explorecarscomponentItemList = const [], }) {  }

List<Userprofile1ItemModel> userprofile1ItemList;

List<Widget2ItemModel> widget2ItemList;

List<RecentlyviewedItemModel> recentlyviewedItemList;

List<ExplorecarscomponentItemModel> explorecarscomponentItemList;

VarElevenTabContainerModel copyWith({List<Userprofile1ItemModel>? userprofile1ItemList, List<Widget2ItemModel>? widget2ItemList, List<RecentlyviewedItemModel>? recentlyviewedItemList, List<ExplorecarscomponentItemModel>? explorecarscomponentItemList, }) { return VarElevenTabContainerModel(
userprofile1ItemList : userprofile1ItemList ?? this.userprofile1ItemList,
widget2ItemList : widget2ItemList ?? this.widget2ItemList,
recentlyviewedItemList : recentlyviewedItemList ?? this.recentlyviewedItemList,
explorecarscomponentItemList : explorecarscomponentItemList ?? this.explorecarscomponentItemList,
); } 
@override List<Object?> get props => [userprofile1ItemList,widget2ItemList,recentlyviewedItemList,explorecarscomponentItemList];
 }
