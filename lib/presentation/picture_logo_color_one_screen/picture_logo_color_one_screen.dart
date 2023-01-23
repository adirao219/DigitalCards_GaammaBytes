import 'package:digitalcards/core/app_export.dart';
import 'package:digitalcards/widgets/app_bar/appbar_iconbutton.dart';
import 'package:digitalcards/widgets/app_bar/appbar_image.dart';
import 'package:digitalcards/widgets/app_bar/custom_app_bar.dart';
import 'package:digitalcards/widgets/custom_button.dart';
import 'package:digitalcards/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class PictureLogoColorOneScreen extends StatefulWidget {
  const PictureLogoColorOneScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _PictureLogoColorOneScreen createState() => _PictureLogoColorOneScreen();
}

class _PictureLogoColorOneScreen extends State<PictureLogoColorOneScreen> {
  TextEditingController _image_controller = new TextEditingController();
  Color pickerColor = Color(0xff443a49);
  Color? currentColor;
  ImagePicker _picker = new ImagePicker();

  bool isImageSelected = false;
  XFile? image;
// ValueChanged<Color> callback
  void changeColor(Color color) {
    setState(() => pickerColor = color);
  }

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
                          height: getVerticalSize(135.00),
                          width: getHorizontalSize(326.00),
                          margin: getMargin(top: 62),
                          child:
                              Stack(alignment: Alignment.topRight, children: [
                            Align(
                                alignment: Alignment.center,
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding: getPadding(left: 6),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                    padding:
                                                        getPadding(bottom: 3),
                                                    child: Text(
                                                        "lbl_logo_picture".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtNunitoSansRegular14
                                                            .copyWith(
                                                                letterSpacing:
                                                                    getHorizontalSize(
                                                                        0.36),
                                                                height:
                                                                    getVerticalSize(
                                                                        1.26)))),
                                                CustomButton(
                                                    onTap: removeSelectedImage,
                                                    height: 23,
                                                    width: 81,
                                                    text: "lbl_remove".tr,
                                                    variant: ButtonVariant
                                                        .OutlineBlack9003f,
                                                    shape: ButtonShape
                                                        .RoundedBorder5,
                                                    padding:
                                                        ButtonPadding.PaddingT3,
                                                    fontStyle: ButtonFontStyle
                                                        .InterRegular12,
                                                    prefixWidget: Container(
                                                        margin:
                                                            getMargin(right: 9),
                                                        child: CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgIconAlternateTrash)))
                                              ])),
                                      Container(
                                          height: getVerticalSize(1.00),
                                          width: getHorizontalSize(326.00),
                                          margin: getMargin(top: 8),
                                          child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                Align(
                                                    alignment: Alignment.center,
                                                    child: Container(
                                                        height: getVerticalSize(
                                                            1.00),
                                                        width:
                                                            getHorizontalSize(
                                                                326.00),
                                                        decoration: BoxDecoration(
                                                            color: ColorConstant
                                                                .gray300Cc,
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                    getHorizontalSize(
                                                                        1.00))))),
                                                Align(
                                                    alignment: Alignment.center,
                                                    child: Container(
                                                        height: getVerticalSize(
                                                            1.00),
                                                        width:
                                                            getHorizontalSize(
                                                                326.00),
                                                        child: Stack(
                                                            alignment: Alignment
                                                                .center,
                                                            children: [
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  child: Container(
                                                                      height: getVerticalSize(
                                                                          1.00),
                                                                      width: getHorizontalSize(
                                                                          326.00),
                                                                      decoration: BoxDecoration(
                                                                          color: ColorConstant
                                                                              .gray300Cc,
                                                                          borderRadius:
                                                                              BorderRadius.circular(getHorizontalSize(1.00))))),
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  child: Container(
                                                                      height: getVerticalSize(
                                                                          1.00),
                                                                      width: getHorizontalSize(
                                                                          326.00),
                                                                      decoration: BoxDecoration(
                                                                          color: ColorConstant
                                                                              .gray300Cc,
                                                                          borderRadius:
                                                                              BorderRadius.circular(getHorizontalSize(1.00)))))
                                                            ])))
                                              ])),
                                      Padding(
                                          padding: getPadding(top: 23),
                                          child: Row(
                                            children: [
                                              Text("lbl_card_color".tr,
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
                                                                  1.26))),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              CustomButton(
                                                  customColor: currentColor,
                                                  onTap: () {
                                                    showDialog(
                                                        context: context,
                                                        builder: (ctx) =>
                                                            AlertDialog(
                                                                title: const Text(
                                                                    'Pick a color!'),
                                                                content:
                                                                    SingleChildScrollView(
                                                                  child:
                                                                      ColorPicker(
                                                                    pickerColor:
                                                                        pickerColor,
                                                                    onColorChanged:
                                                                        changeColor,
                                                                  ),
                                                                ),
                                                                actions: <
                                                                    Widget>[
                                                                  ElevatedButton(
                                                                    child: const Text(
                                                                        'Got it'),
                                                                    onPressed:
                                                                        () {
                                                                      setState(() =>
                                                                          currentColor =
                                                                              pickerColor);
                                                                      Navigator.of(
                                                                              context)
                                                                          .pop();
                                                                    },
                                                                  ),
                                                                ]));
                                                  },
                                                  height: 34,
                                                  width: 92,
                                                  text: "lbl_card_color".tr,
                                                  margin: getMargin(top: 7),
                                                  variant: ButtonVariant
                                                      .OutlineBlack9003f,
                                                  shape: ButtonShape
                                                      .RoundedBorder5,
                                                  padding:
                                                      ButtonPadding.PaddingT10,
                                                  fontStyle: ButtonFontStyle
                                                      .InterBlack10,
                                                  alignment: Alignment.topRight)
                                            ],
                                          )),
                                    ])),
                            GestureDetector(
                              onTap: () {
                                onTapSelectPicture1();
                              },
                              child: 
                              CustomButton(
                                width: 120,
                                text: (isImageSelected
                                    ? "lbl_image_selected".tr
                                    : "lbl_select_image".tr),
                                variant: ButtonVariant.OutlineBlack9003f,
                                shape: ButtonShape.RoundedBorder5,
                                padding: ButtonPadding.PaddingT10,
                                fontStyle: ButtonFontStyle.InterBlack10,
                                alignment: Alignment.topCenter,
                                prefixWidget: Container(
                                    margin: getMargin(right: 10),
                                    child: Icon( 
                                      (isImageSelected
                                    ?Icons.done:Icons.photo), color: Colors.white,size: 15,)),
                              ),
                            ),
                          ])),
                      Container(
                          height: getVerticalSize(1.00),
                          width: getHorizontalSize(326.00),
                          margin: getMargin(top: 26),
                          decoration: BoxDecoration(
                              color: ColorConstant.gray300Cc,
                              borderRadius: BorderRadius.circular(
                                  getHorizontalSize(1.00)))),
                      GestureDetector(
                          onTap: () {
                            onTapBussiness3Next();
                          },
                          child: CustomButton(
                              height: 62,
                              width: 295,
                              text: "lbl_next".tr,
                              margin: getMargin(top: 83, bottom: 5),
                              fontStyle: ButtonFontStyle.InterBlack16,
                              alignment: Alignment.center))
                    ]))));
  }

  onTapArrowleft8() {
    Get.back();
  }

  onTapBussiness3Next() {
    Get.toNamed(AppRoutes.customizationOneScreen);
  }

  onTapSelectPicture1() {
    showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
                title: const Text('Select Type!'),
                content: const SingleChildScrollView(
                    child: Text(
                        "You can select an image from gallery or click a picture using camera")),
                actions: <Widget>[
                  ElevatedButton(
                    child: const Text('Camera'),
                    onPressed: () {
                      clickOrSelectImage("Camera");
                    },
                  ),
                  ElevatedButton(
                    child: const Text('Gallery'),
                    onPressed: () {
                      clickOrSelectImage("Gallery");
                    },
                  ),
                ]));
  }

  clickOrSelectImage(String type) async {
    Navigator.of(context).pop();
    if (type == "Gallery") {
      image = await _picker.pickImage(source: ImageSource.gallery);
    } else {
      image = await _picker.pickImage(source: ImageSource.camera);
    }
    if (image != null) {
      setState(() {
        isImageSelected = true;
      });
      File imageFile = File(image!.path);
      Get.toNamed(AppRoutes.imageModifyScreen,
          arguments: {"imageFile": imageFile})?.then((value) {
        double? width = value['width'];
        double? height = value['height'];
        bool? isSquare = value['isSquare'];
      });
    }
  }

  removeSelectedImage() {
    setState(() {
      image = null;

      isImageSelected = false;
    });
  }
}
