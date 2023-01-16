import '../models/listbusinesscardone_item_model.dart';
import 'package:digitalcards/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListbusinesscardoneItemWidget extends StatelessWidget {
  ListbusinesscardoneItemWidget(this.listbusinesscardoneItemModelObj);

  ListbusinesscardoneItemModel listbusinesscardoneItemModelObj;


  @override
  Widget build(BuildContext context) {
    return Container(
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
              top: 8,
              right: 9,
              bottom: 8,
            ),
            decoration: AppDecoration.outlineBlack9001,
            child: Stack(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgBusinesscard1134x197,
                  height: getVerticalSize(
                    134.00,
                  ),
                  width: getHorizontalSize(
                    197.00,
                  ),
                  radius: BorderRadius.circular(
                    getHorizontalSize(
                      5.00,
                    ),
                  ),
                  alignment: Alignment.center,
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              left: 12,
              top: 1,
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
              top: 9,
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
              top: 8,
              bottom: 2,
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
    );
  }
}
