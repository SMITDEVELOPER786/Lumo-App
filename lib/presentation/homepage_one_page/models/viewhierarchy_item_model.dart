import '../../../core/app_export.dart';/// This class is used in the [viewhierarchy_item_widget] screen.
class ViewhierarchyItemModel {ViewhierarchyItemModel({this.fireworkImage, this.toppersPartyImage1, this.toppersPartyImage2, this.toppersPartyImage3, this.toppersPartyImage4, this.toppersPartyImage5, this.toppersPartyImage6, this.toppersPartyImage7, this.monthlyToppers, this.januaryImage, this.januaryText, this.toppersPartyImage8, this.id, }) { fireworkImage = fireworkImage  ?? Rx(ImageConstant.imgFireworkExplosion);toppersPartyImage1 = toppersPartyImage1  ?? Rx(ImageConstant.imgStar1);toppersPartyImage2 = toppersPartyImage2  ?? Rx(ImageConstant.imgStar2);toppersPartyImage3 = toppersPartyImage3  ?? Rx(ImageConstant.imgStar177x77);toppersPartyImage4 = toppersPartyImage4  ?? Rx(ImageConstant.imgStar269x69);toppersPartyImage5 = toppersPartyImage5  ?? Rx(ImageConstant.imgRadioStudio);toppersPartyImage6 = toppersPartyImage6  ?? Rx(ImageConstant.imgStar162x62);toppersPartyImage7 = toppersPartyImage7  ?? Rx(ImageConstant.imgStar256x56);monthlyToppers = monthlyToppers  ?? Rx("Monthly toppers party");januaryImage = januaryImage  ?? Rx(ImageConstant.imgEventAccepted);januaryText = januaryText  ?? Rx("January 15 & 16");toppersPartyImage8 = toppersPartyImage8  ?? Rx(ImageConstant.imgPartyBalloons);id = id  ?? Rx(""); }

Rx<String>? fireworkImage;

Rx<String>? toppersPartyImage1;

Rx<String>? toppersPartyImage2;

Rx<String>? toppersPartyImage3;

Rx<String>? toppersPartyImage4;

Rx<String>? toppersPartyImage5;

Rx<String>? toppersPartyImage6;

Rx<String>? toppersPartyImage7;

Rx<String>? monthlyToppers;

Rx<String>? januaryImage;

Rx<String>? januaryText;

Rx<String>? toppersPartyImage8;

Rx<String>? id;

 }
