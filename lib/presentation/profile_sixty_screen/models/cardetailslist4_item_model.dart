import '../../../core/app_export.dart';/// This class is used in the [cardetailslist4_item_widget] screen.
class Cardetailslist4ItemModel {Cardetailslist4ItemModel({this.carName, this.colorName, this.modelName, this.priceText, this.brandImage, this.id, }) { carName = carName  ?? "FORD";colorName = colorName  ?? "Magnetic Blue";modelName = modelName  ?? "Mustang Coupe";priceText = priceText  ?? "BHD 500";brandImage = brandImage  ?? ImageConstant.imgImage5273108x291;id = id  ?? ""; }

String? carName;

String? colorName;

String? modelName;

String? priceText;

String? brandImage;

String? id;

 }
