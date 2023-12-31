// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'widget_item_model.dart';/// This class defines the variables used in the [profile_thirtyseven_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.
class ProfileThirtysevenModel extends Equatable {ProfileThirtysevenModel({this.widgetItemList = const []}) {  }

List<WidgetItemModel> widgetItemList;

ProfileThirtysevenModel copyWith({List<WidgetItemModel>? widgetItemList}) { return ProfileThirtysevenModel(
widgetItemList : widgetItemList ?? this.widgetItemList,
); } 
@override List<Object?> get props => [widgetItemList];
 }
