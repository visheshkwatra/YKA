import '../../../core/app_export.dart';/// This class is used in the [carnamelist_item_widget] screen.
class CarnamelistItemModel {CarnamelistItemModel({this.carImage, this.carName, this.engineType, this.id, }) { carImage = carImage  ?? ImageConstant.imgCamera;carName = carName  ?? "1500 cc";engineType = engineType  ?? "Engine";id = id  ?? ""; }

String? carImage;

String? carName;

String? engineType;

String? id;

 }
