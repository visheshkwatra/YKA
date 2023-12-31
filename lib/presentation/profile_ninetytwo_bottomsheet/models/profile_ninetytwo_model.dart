// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'widget5_item_model.dart';/// This class defines the variables used in the [profile_ninetytwo_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.
class ProfileNinetytwoModel extends Equatable {ProfileNinetytwoModel({this.widget5ItemList = const []}) {  }

List<Widget5ItemModel> widget5ItemList;

ProfileNinetytwoModel copyWith({List<Widget5ItemModel>? widget5ItemList}) { return ProfileNinetytwoModel(
widget5ItemList : widget5ItemList ?? this.widget5ItemList,
); } 
@override List<Object?> get props => [widget5ItemList];
 }
