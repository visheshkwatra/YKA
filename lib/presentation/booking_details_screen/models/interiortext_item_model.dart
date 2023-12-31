import '../../../core/app_export.dart';/// This class is used in the [interiortext_item_widget] screen.
class InteriortextItemModel {InteriortextItemModel({this.interiorImage, this.interiorText, this.id, }) { interiorImage = interiorImage  ?? ImageConstant.imgRectangle34625941;interiorText = interiorText  ?? "Interior";id = id  ?? ""; }

String? interiorImage;

String? interiorText;

String? id;

 }
