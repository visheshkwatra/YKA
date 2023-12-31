import '../../../core/app_export.dart';/// This class is used in the [cardetailslist2_item_widget] screen.
class Cardetailslist2ItemModel {Cardetailslist2ItemModel({this.carName, this.colorName, this.modelName, this.price, this.ford, this.id, }) { carName = carName  ?? "FORD";colorName = colorName  ?? "Magnetic Blue";modelName = modelName  ?? "Mustang Coupe";price = price  ?? "BHD 500";ford = ford  ?? ImageConstant.imgImage5273108x291;id = id  ?? ""; }

String? carName;

String? colorName;

String? modelName;

String? price;

String? ford;

String? id;

 }
