import 'package:digitalcards/core/app_export.dart';
import 'package:digitalcards/widgets/app_bar/appbar_iconbutton.dart';
import 'package:digitalcards/widgets/app_bar/appbar_image.dart';
import 'package:digitalcards/widgets/app_bar/custom_app_bar.dart';
import 'package:digitalcards/widgets/custom_button.dart';
import 'package:digitalcards/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class PictureLogoColorOneScreen extends StatefulWidget {
  const PictureLogoColorOneScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _PictureLogoColorOneScreen createState() => _PictureLogoColorOneScreen();
}
class _PictureLogoColorOneScreen
    extends State<PictureLogoColorOneScreen> {
      
 TextEditingController _image_controller = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(108.00),
                centerTitle: true,
                title: Container(
                    height: getVerticalSize(96.00),
                    width: size.width,
                    child: Stack(alignment: Alignment.centerLeft, children: [
                      AppbarImage(
                          height: getVerticalSize(94.00),
                          width: getHorizontalSize(375.00),
                          imagePath: ImageConstant.imgVectorDeepOrangeA100,
                          margin: getMargin(bottom: 2)),
                      AppbarIconbutton(
                          svgPath: ImageConstant.imgArrowleft,
                          margin: getMargin(left: 40, top: 44, right: 283),
                          onTap: onTapArrowleft8)
                    ])),
                styleType: Style.bgStyle_9),
            body: Container(
                width: size.width,
                padding: getPadding(left: 16, top: 31, right: 16, bottom: 31),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: getHorizontalSize(266.00),
                          margin: getMargin(left: 20),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "msg_card_type_ex_buisness2".tr,
                                    style: TextStyle(
                                        color: ColorConstant.pink900,
                                        fontSize: getFontSize(18),
                                        fontFamily: 'Nunito',
                                        fontWeight: FontWeight.w700,
                                        height: getVerticalSize(1.00))),
                                TextSpan(
                                    text: "msg_template_type".tr,
                                    style: TextStyle(
                                        color: ColorConstant.pink900,
                                        fontSize: getFontSize(18),
                                        fontFamily: 'Nunito',
                                        fontWeight: FontWeight.w600,
                                        height: getVerticalSize(1.00)))
                              ]),
                              textAlign: TextAlign.left)),
                      Container(
                          height: getVerticalSize(149.00),
                          width: getHorizontalSize(340.00),
                          margin: getMargin(top: 48),
                          child:
                              Stack(alignment: Alignment.topCenter, children: [
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                    padding: getPadding(right: 13),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("lbl_logo_picture".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtNunitoSansRegular14
                                                  .copyWith(
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                              0.36),
                                                      height: getVerticalSize(
                                                          1.26))),
                                          Container(
                                              height: getVerticalSize(1.00),
                                              width: getHorizontalSize(326.00),
                                              margin:
                                                  getMargin(left: 1, top: 11),
                                              decoration: BoxDecoration(
                                                  color:
                                                      ColorConstant.gray300Cc,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          getHorizontalSize(
                                                              1.00)))),
                                          Padding(
                                              padding: getPadding(top: 23),
                                              child: Text("lbl_card_color".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtNunitoSansRegular14
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.36),
                                                          height:
                                                              getVerticalSize(
                                                                  1.26)))),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgScreenshot56,
                                              height: getVerticalSize(22.00),
                                              width: getHorizontalSize(326.00),
                                              margin: getMargin(top: 33))
                                        ]))),
                            CustomTextFormField(
                                width: 155,
                                focusNode: FocusNode(),
                                controller:
                                    _image_controller,
                                hintText: "lbl_select_image".tr,
                                variant: TextFormFieldVariant.OutlineBlack9003f,
                                padding: TextFormFieldPadding.PaddingT12,
                                fontStyle: TextFormFieldFontStyle.InterBlack12,
                                textInputAction: TextInputAction.done,
                                alignment: Alignment.topCenter,
                                prefix: Container(
                                    margin: getMargin(
                                        left: 14,
                                        top: 12,
                                        right: 11,
                                        bottom: 11),
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgMap)),
                                prefixConstraints: BoxConstraints(
                                    maxHeight: getVerticalSize(42.00))),
                            CustomButton(
                                height: 34,
                                width: 92,
                                text: "lbl_remove".tr,
                                margin: getMargin(top: 7),
                                variant: ButtonVariant.OutlineBlack9003f,
                                shape: ButtonShape.RoundedBorder5,
                                padding: ButtonPadding.PaddingT10,
                                fontStyle: ButtonFontStyle.InterBlack10,
                                prefixWidget: Container(
                                    margin: getMargin(right: 10),
                                    child: CustomImageView(
                                        svgPath: ImageConstant
                                            .imgIconAlternateTrash)),
                                alignment: Alignment.topRight)
                          ])),
                      CustomImageView(
                          imagePath: ImageConstant.imgScreenshot57,
                          height: getVerticalSize(153.00),
                          width: getHorizontalSize(133.00),
                          radius:
                              BorderRadius.circular(getHorizontalSize(5.00))),
                      CustomButton(
                          height: 62,
                          width: 295,
                          text: "lbl_next".tr,
                          margin: getMargin(top: 83, bottom: 5),
                          fontStyle: ButtonFontStyle.InterBlack16,
                          alignment: Alignment.center)
                    ]))));
  }

  onTapArrowleft8() {
    Get.back();
  }
}
