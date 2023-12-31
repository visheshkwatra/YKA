// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'cardetailslist4_item_model.dart';/// This class defines the variables used in the [profile_sixty_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ProfileSixtyModel extends Equatable {ProfileSixtyModel({this.cardetailslist4ItemList = const []}) {  }

List<Cardetailslist4ItemModel> cardetailslist4ItemList;

ProfileSixtyModel copyWith({List<Cardetailslist4ItemModel>? cardetailslist4ItemList}) { return ProfileSixtyModel(
cardetailslist4ItemList : cardetailslist4ItemList ?? this.cardetailslist4ItemList,
); } 
@override List<Object?> get props => [cardetailslist4ItemList];
 }
