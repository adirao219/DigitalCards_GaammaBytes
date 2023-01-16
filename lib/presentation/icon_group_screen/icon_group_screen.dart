import 'package:digitalcards/core/app_export.dart';
import 'package:digitalcards/core/utils/validation_functions.dart';
import 'package:digitalcards/widgets/app_bar/appbar_iconbutton.dart';
import 'package:digitalcards/widgets/app_bar/appbar_image.dart';
import 'package:digitalcards/widgets/app_bar/appbar_title.dart';
import 'package:digitalcards/widgets/app_bar/custom_app_bar.dart';
import 'package:digitalcards/widgets/custom_button.dart';
import 'package:digitalcards/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
class IconGroupScreen extends StatefulWidget {
  const IconGroupScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _IconGroupScreen createState() => _IconGroupScreen();
}
// ignore_for_file: must_be_immutable
class _IconGroupScreen extends State<IconGroupScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController _name_controller = new TextEditingController();
  TextEditingController _link1_controller = new TextEditingController();
  TextEditingController _link2_controller = new TextEditingController();
  TextEditingController _link3_controller = new TextEditingController();
  TextEditingController _link4_controller = new TextEditingController();
  TextEditingController _link5_controller = new TextEditingController();
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
                    child: Stack(alignment: Alignment.bottomCenter, children: [
                      AppbarImage(
                          height: getVerticalSize(94.00),
                          width: getHorizontalSize(375.00),
                          imagePath: ImageConstant.imgVectorDeepOrangeA100,
                          margin: getMargin(bottom: 2)),
                      AppbarTitle(
                          text: "lbl_icon_group".tr.toUpperCase(),
                          margin: getMargin(
                              left: 145, top: 58, right: 102, bottom: 9)),
                      AppbarIconbutton(
                          svgPath: ImageConstant.imgArrowleft,
                          margin: getMargin(left: 25, top: 44, right: 298),
                          onTap: onTapArrowleft22)
                    ])),
                styleType: Style.bgStyle_23),
            body: Form(
                key: _formKey,
                child: Container(
                    width: size.width,
                    padding:
                        getPadding(left: 24, top: 10, right: 24, bottom: 10),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("msg_card_name_ex".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtNunitoBold18
                                  .copyWith(height: getVerticalSize(1.00))),
                          CustomTextFormField(
                              width: 326,
                              focusNode: FocusNode(),
                              controller: _name_controller,
                              hintText: "lbl_name2".tr,
                              margin: getMargin(left: 1, top: 21),
                              validator: (value) {
                                if (!isText(value)) {
                                  return "Please enter valid text";
                                }
                                return null;
                              }),
                        CustomTextFormField(
                          width: 326,
                          focusNode: FocusNode(),
                          controller: _link1_controller,
                          hintText: "lbl_link_1".tr,
                          margin: getMargin(left: 1, top: 23)),
                      CustomTextFormField(
                          width: 326,
                          focusNode: FocusNode(),
                          controller: _link2_controller,
                          hintText: "lbl_link_2".tr,
                          margin: getMargin(left: 1, top: 23)),
                      CustomTextFormField(
                          width: 326,
                          focusNode: FocusNode(),
                          controller: _link3_controller,
                          hintText: "lbl_link_3".tr,
                          margin: getMargin(left: 1, top: 23)),
                      CustomTextFormField(
                          width: 326,
                          focusNode: FocusNode(),
                          controller: _link4_controller,
                          hintText: "lbl_link_4".tr,
                          margin: getMargin(left: 1, top: 23)),
                      CustomTextFormField(
                          width: 326,
                          focusNode: FocusNode(),
                          controller: _link5_controller,
                          hintText: "lbl_link_5".tr,
                          margin: getMargin(left: 1, top: 23),
                              textInputAction: TextInputAction.done)
                        ]))),
            bottomNavigationBar: Padding(
                padding: getPadding(left: 24, right: 25, bottom: 55),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomButton(height: 62, width: 326, text: "lbl_save".tr)
                    ]))));
  }

  onTapArrowleft22() {
    Get.back();
  }
}
