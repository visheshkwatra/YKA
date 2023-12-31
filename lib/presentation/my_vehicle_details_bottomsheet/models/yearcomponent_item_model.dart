import '../../../core/app_export.dart';/// This class is used in the [yearcomponent_item_widget] screen.
class YearcomponentItemModel {YearcomponentItemModel({this.yearImage, this.yearText, this.yearText1, this.id, }) { yearImage = yearImage  ?? ImageConstant.imgGroup;yearText = yearText  ?? "2023";yearText1 = yearText1  ?? "Year";id = id  ?? ""; }

String? yearImage;

String? yearText;

String? yearText1;

String? id;

 }
