// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class is used in the [widget_item_widget] screen.
class WidgetItemModel extends Equatable {WidgetItemModel({this.widget, this.isSelected, }) { widget = widget  ?? "Home";isSelected = isSelected  ?? false; }

String? widget;

bool? isSelected;

WidgetItemModel copyWith({String? widget, bool? isSelected, }) { return WidgetItemModel(
widget : widget ?? this.widget,
isSelected : isSelected ?? this.isSelected,
); } 
@override List<Object?> get props => [widget,isSelected];
 }
