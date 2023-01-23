import 'package:digitalcards/core/app_export.dart';
import 'package:digitalcards/widgets/app_bar/appbar_iconbutton.dart';
import 'package:digitalcards/widgets/app_bar/appbar_image.dart';
import 'package:digitalcards/widgets/app_bar/appbar_title.dart';
import 'package:digitalcards/widgets/app_bar/custom_app_bar.dart';
import 'package:digitalcards/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:image_cropper/image_cropper.dart';

import 'dart:io';
import '../../widgets/custom_text_form_field.dart';

class TemplatePreviewScreen extends StatefulWidget {
  const TemplatePreviewScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _TemplatePreviewScreen createState() => _TemplatePreviewScreen();
}

class _TemplatePreviewScreen extends State<TemplatePreviewScreen> {
 

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
                    child: Stack(alignment: Alignment.bottomCenter, children: [
                      AppbarImage(
                          height: getVerticalSize(94.00),
                          width: getHorizontalSize(375.00),
                          imagePath: ImageConstant.imgVectorDeepOrangeA100,
                          margin: getMargin(bottom: 2)),
                      AppbarTitle(
                          text: "lbl_select_template".tr.toUpperCase(),
                          margin: getMargin(
                              left: 0, top: 58, right: 0, bottom: 9)),
                      AppbarIconbutton(
                          svgPath: ImageConstant.imgArrowleft,
                          margin: getMargin(left: 25, top: 44, right: 298),
                          onTap: onTapArrowleft20)
                    ])),
                styleType: Style.bgStyle_21),
            body: SingleChildScrollView(
                child: 
                Card(

                  shadowColor: Colors.black,
                  elevation: 10,
                  margin:  getMargin(left: 20, top: 20, right: 20,bottom: 20),
                  child: 
                  Padding(
                   padding:  getPadding(left: 10, top: 10, right: 10, bottom: 10),
                    child: 
                HtmlWidget(
              '''
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>

<h2>Round Card</h2>

<div class="card" style="box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
  transition: 0.3s;
  width: 40%;
  border-radius: 5px;">
  <img src="https://www.w3schools.com/howto/img_avatar2.png" style="border-radius: 5px 5px 0 0;" alt="Avatar" style="width:100%">
  <div class="container" style=" padding: 2px 16px;">
    <h4><b>Jane Doe</b></h4> 
    <p>Interior Designer</p> 
  </div>
</div>

</body>
</html> 

  ''',
              customStylesBuilder: (element) {
                if (element.classes.contains('foo')) {
                  return {'color': 'red'};
                }

                return null;
              },

              // render a custom widget
              customWidgetBuilder: (element) {},

              // these callbacks are called when a complicated element is loading
              // or failed to render allowing the app to render progress indicator
              // and fallback widget
              onErrorBuilder: (context, element, error) =>
                  Text('$element error: $error'),
              onLoadingBuilder: (context, element, loadingProgress) =>
                  CircularProgressIndicator(),

              // this callback will be triggered when user taps a link
              // onTapUrl: (url) => print('tapped $url'),

              // select the render mode for HTML body
              // by default, a simple `Column` is rendered
              // consider using `ListView` or `SliverList` for better performance
              renderMode: RenderMode.column,

              // set the default styling for text
              textStyle: TextStyle(fontSize: 14),

              // turn on `webView` if you need IFRAME support (it's disabled by default)
              // webView: true,
            )))),
            bottomNavigationBar: InkWell(
                onTap: onTapArrowleft20,
                child: Padding(
                    padding: getPadding(left: 25, right: 24, bottom: 58),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomButton(
                              height: 62, width: 326, text: "lbl_ok".tr)
                        ])))));
  }


  onTapArrowleft20() {
    Get.back();
  }
}
