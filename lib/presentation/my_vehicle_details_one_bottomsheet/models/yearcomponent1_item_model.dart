import '../../../core/app_export.dart';/// This class is used in the [yearcomponent1_item_widget] screen.
class Yearcomponent1ItemModel {Yearcomponent1ItemModel({this.yearImage, this.yearText, this.yearLabel, this.id, }) { yearImage = yearImage  ?? ImageConstant.imgGroup;yearText = yearText  ?? "2023";yearLabel = yearLabel  ?? "Year";id = id  ?? ""; }

String? yearImage;

String? yearText;

String? yearLabel;

String? id;

 }
