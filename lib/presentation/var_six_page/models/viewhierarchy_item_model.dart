import '../../../core/app_export.dart';/// This class is used in the [viewhierarchy_item_widget] screen.
class ViewhierarchyItemModel {ViewhierarchyItemModel({this.image1, this.image2, this.image3, this.text1, this.id, }) { image1 = image1  ?? ImageConstant.imgAirplane;image2 = image2  ?? ImageConstant.imgAirplane;image3 = image3  ?? ImageConstant.img7439518328551;text1 = text1  ?? "Bodyshop\nService";id = id  ?? ""; }

String? image1;

String? image2;

String? image3;

String? text1;

String? id;

 }
