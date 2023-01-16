import 'controller/menu_controller.dart';
import 'package:digitalcards/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class MenuDraweritem extends StatelessWidget {
  MenuDraweritem(this.controller);

  MenuController controller;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: AppDecoration.fillWhiteA700,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: getHorizontalSize(
                270.00,
              ),
              padding: getPadding(
                left: 29,
                top: 21,
                right: 29,
                bottom: 21,
              ),
              decoration: AppDecoration.fillDeeporangeA100.copyWith(
                borderRadius: BorderRadiusStyle.customBorderBL15,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgInneroval,
                    height: getSize(
                      94.00,
                    ),
                    width: getSize(
                      94.00,
                    ),
                    radius: BorderRadius.circular(
                      getHorizontalSize(
                        47.00,
                      ),
                    ),
                    margin: getMargin(
                      top: 59,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 6,
                    ),
                    child: Text(
                      "lbl_steve_smith".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtBalooBhaijaanRegular19.copyWith(
                        height: getVerticalSize(
                          1.00,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: getPadding(
                left: 27,
                top: 51,
                bottom: 133,
              ),
              child: Row(
                children: [
                  Padding(
                    padding: getPadding(
                      bottom: 1,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgHome,
                          height: getSize(
                            21.00,
                          ),
                          width: getSize(
                            21.00,
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgUser,
                          height: getSize(
                            21.00,
                          ),
                          width: getSize(
                            21.00,
                          ),
                          margin: getMargin(
                            top: 41,
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgGrid,
                          height: getSize(
                            19.00,
                          ),
                          width: getSize(
                            19.00,
                          ),
                          margin: getMargin(
                            top: 43,
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgMenu,
                          height: getSize(
                            21.00,
                          ),
                          width: getSize(
                            21.00,
                          ),
                          margin: getMargin(
                            top: 42,
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgMenuPink900,
                          height: getSize(
                            21.00,
                          ),
                          width: getSize(
                            21.00,
                          ),
                          margin: getMargin(
                            top: 41,
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgLock,
                          height: getSize(
                            21.00,
                          ),
                          width: getSize(
                            21.00,
                          ),
                          margin: getMargin(
                            top: 40,
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgRefresh,
                          height: getSize(
                            21.00,
                          ),
                          width: getSize(
                            21.00,
                          ),
                          margin: getMargin(
                            top: 42,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(
                      135.00,
                    ),
                    margin: getMargin(
                      left: 13,
                    ),
                    child: Text(
                      "msg_home_my_profile_digital".tr,
                      maxLines: null,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtNunitoSansSemiBold16.copyWith(
                        height: getVerticalSize(
                          2.84,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
