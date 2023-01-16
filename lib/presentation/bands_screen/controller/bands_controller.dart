import 'package:digitalcards/core/app_export.dart';import 'package:digitalcards/presentation/bands_screen/models/bands_model.dart';import 'package:flutter/material.dart';class BandsController extends GetxController {TextEditingController group33636Controller = TextEditingController();

TextEditingController group33633Controller = TextEditingController();

TextEditingController group33635Controller = TextEditingController();

TextEditingController group33637Controller = TextEditingController();

TextEditingController group33639Controller = TextEditingController();

TextEditingController group33640Controller = TextEditingController();

TextEditingController group33641Controller = TextEditingController();

TextEditingController group33642Controller = TextEditingController();

TextEditingController group33634Controller = TextEditingController();

Rx<BandsModel> bandsModelObj = BandsModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); group33636Controller.dispose(); group33633Controller.dispose(); group33635Controller.dispose(); group33637Controller.dispose(); group33639Controller.dispose(); group33640Controller.dispose(); group33641Controller.dispose(); group33642Controller.dispose(); group33634Controller.dispose(); } 
 }
