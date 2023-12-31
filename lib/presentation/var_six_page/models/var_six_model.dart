// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'viewhierarchy_item_model.dart';/// This class defines the variables used in the [var_six_page],
/// and is typically used to hold data that is passed between different parts of the application.
class VarSixModel extends Equatable {VarSixModel({this.viewhierarchyItemList = const []}) {  }

List<ViewhierarchyItemModel> viewhierarchyItemList;

VarSixModel copyWith({List<ViewhierarchyItemModel>? viewhierarchyItemList}) { return VarSixModel(
viewhierarchyItemList : viewhierarchyItemList ?? this.viewhierarchyItemList,
); } 
@override List<Object?> get props => [viewhierarchyItemList];
 }
