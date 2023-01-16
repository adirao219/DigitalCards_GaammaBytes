import '../models/listchristmasthumbnail_item_model.dart';
import 'package:digitalcards/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListchristmasthumbnailItemWidget extends StatelessWidget {
  ListchristmasthumbnailItemWidget(this.listchristmasthumbnailItemModelObj);

  ListchristmasthumbnailItemModel listchristmasthumbnailItemModelObj;


  @override
  Widget build(BuildContext context) {
    return 
    InkWell(
      onTap: () {
         Get.toNamed(AppRoutes.eGreetingCardOptionsScreen);
      },
      child:
    Container(
      decoration: AppDecoration.outlineBlack900,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: getVerticalSize(
              154.00,
            ),
            width: getHorizontalSize(
              218.00,
            ),
            padding: getPadding(
              left: 9,
              top: 5,
              right: 9,
              bottom: 5,
            ),
            decoration: AppDecoration.outlineBlack9001,
            child: Stack(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgChristmasthumbnail,
                  height: getVerticalSize(
                    137.00,
                  ),
                  width: getHorizontalSize(
                    197.00,
                  ),
                  radius: BorderRadius.circular(
                    getHorizontalSize(
                      5.00,
                    ),
                  ),
                  alignment: Alignment.topCenter,
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              left: 12,
              top: 2,
            ),
            child: Text(
              "lbl_card_name".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtNunitoSansRegular14.copyWith(
                letterSpacing: getHorizontalSize(
                  0.36,
                ),
                height: getVerticalSize(
                  1.26,
                ),
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              left: 12,
              top: 10,
            ),
            child: Text(
              "lbl_template_name".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtNunitoSansRegular14.copyWith(
                letterSpacing: getHorizontalSize(
                  0.36,
                ),
                height: getVerticalSize(
                  1.26,
                ),
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              left: 12,
              top: 7,
              bottom: 1,
            ),
            child: Text(
              "lbl_created_date".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtNunitoSansRegular14.copyWith(
                letterSpacing: getHorizontalSize(
                  0.36,
                ),
                height: getVerticalSize(
                  1.26,
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
