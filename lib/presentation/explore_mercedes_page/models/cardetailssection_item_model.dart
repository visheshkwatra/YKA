import '../../../core/app_export.dart';/// This class is used in the [cardetailssection_item_widget] screen.
class CardetailssectionItemModel {CardetailssectionItemModel({this.carBrand, this.carColor, this.carModel, this.carPrice, this.carLogo, this.id, }) { carBrand = carBrand  ?? "INFINITI";carColor = carColor  ?? "Midnight Black";carModel = carModel  ?? "Q50 Sensory";carPrice = carPrice  ?? "BHD 500";carLogo = carLogo  ?? ImageConstant.imgImage42145x317;id = id  ?? ""; }

String? carBrand;

String? carColor;

String? carModel;

String? carPrice;

String? carLogo;

String? id;

 }
