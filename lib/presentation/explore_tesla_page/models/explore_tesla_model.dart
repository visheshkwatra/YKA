// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'package:yka_app/data/models/selectionPopupModel/selection_popup_model.dart';/// This class defines the variables used in the [explore_tesla_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ExploreTeslaModel extends Equatable {ExploreTeslaModel({this.dropdownItemList = const [], this.dropdownItemList1 = const [], this.dropdownItemList2 = const [], }) {  }

List<SelectionPopupModel> dropdownItemList;

List<SelectionPopupModel> dropdownItemList1;

List<SelectionPopupModel> dropdownItemList2;

ExploreTeslaModel copyWith({List<SelectionPopupModel>? dropdownItemList, List<SelectionPopupModel>? dropdownItemList1, List<SelectionPopupModel>? dropdownItemList2, }) { return ExploreTeslaModel(
dropdownItemList : dropdownItemList ?? this.dropdownItemList,
dropdownItemList1 : dropdownItemList1 ?? this.dropdownItemList1,
dropdownItemList2 : dropdownItemList2 ?? this.dropdownItemList2,
); } 
@override List<Object?> get props => [dropdownItemList,dropdownItemList1,dropdownItemList2];
 }
