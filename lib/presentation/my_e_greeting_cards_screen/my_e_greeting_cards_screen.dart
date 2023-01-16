import '../my_e_greeting_cards_screen/widgets/listchristmasthumbnail_item_widget.dart';
import 'models/listchristmasthumbnail_item_model.dart';
import 'package:digitalcards/core/app_export.dart';
import 'package:digitalcards/widgets/app_bar/appbar_iconbutton.dart';
import 'package:digitalcards/widgets/app_bar/appbar_image.dart';
import 'package:digitalcards/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

import 'models/my_e_greeting_cards_model.dart';
class MyEGreetingCardsScreen extends StatefulWidget {
  const MyEGreetingCardsScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyEGreetingCardsScreen createState() => _MyEGreetingCardsScreen();
}
class _MyEGreetingCardsScreen extends State<MyEGreetingCardsScreen> {
  
  
  Rx<MyEGreetingCardsModel> myEGreetingCardsModelObj  = 
      MyEGreetingCardsModel().obs;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
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
                          onTap: onTapArrowleft17)
                    ])),
                styleType: Style.bgStyle_18),
            body: Container(
                width: size.width,
                padding: getPadding(left: 40, top: 28, right: 40, bottom: 28),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("msg_my_e_greeting_cards".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterSemiBold20
                              .copyWith(height: getVerticalSize(1.00))),
                      Padding(
                          padding: getPadding(left: 14, top: 43, right: 63),
                          child: Obx(() => ListView.separated(
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(56.00));
                              },
                              itemCount: myEGreetingCardsModelObj
                                  .value.listchristmasthumbnailItemList.length,
                              itemBuilder: (context, index) {
                                ListchristmasthumbnailItemModel model =
                                    myEGreetingCardsModelObj.value
                                        .listchristmasthumbnailItemList[index];
                                return ListchristmasthumbnailItemWidget(model);
                              })))
                    ]))));
  }

  onTapArrowleft17() {
    Get.back();
  }
}
