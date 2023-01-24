import 'package:digitalcards/presentation/home_onboarding_screen/home_onboarding_screen.dart';
import 'package:digitalcards/presentation/home_onboarding_screen/binding/home_onboarding_binding.dart';
import 'package:digitalcards/presentation/welcome_screen/welcome_screen.dart';
import 'package:digitalcards/presentation/signup_screen/signup_screen.dart';
import 'package:digitalcards/presentation/forgot_passwordone_screen/forgot_passwordone_screen.dart';
import 'package:digitalcards/presentation/forgot_passwordtwo_screen/forgot_passwordtwo_screen.dart';
import 'package:digitalcards/presentation/home_screen/home_screen.dart';
import 'package:digitalcards/presentation/digital_card_options_screen/digital_card_options_screen.dart';
import 'package:digitalcards/presentation/basic_card_entry_one_screen/basic_card_entry_one_screen.dart';
import 'package:digitalcards/presentation/card_entry_one_screen/card_entry_one_screen.dart';
import 'package:digitalcards/presentation/location_entry_screen/location_entry_screen.dart';
import 'package:digitalcards/presentation/picture_logo_color_one_screen/picture_logo_color_one_screen.dart';
import 'package:digitalcards/presentation/customization_one_screen/customization_one_screen.dart';
import 'package:digitalcards/presentation/e_greeting_card_options_screen/e_greeting_card_options_screen.dart';
import 'package:digitalcards/presentation/basic_card_entry_screen/basic_card_entry_screen.dart';
import 'package:digitalcards/presentation/card_entry_screen/card_entry_screen.dart';
import 'package:digitalcards/presentation/picture_logo_color_screen/picture_logo_color_screen.dart';
import 'package:digitalcards/presentation/customization_screen/customization_screen.dart';
import 'package:digitalcards/presentation/my_profile_screen/my_profile_screen.dart';
import 'package:digitalcards/presentation/my_digital_cards_screen/my_digital_cards_screen.dart';
import 'package:digitalcards/presentation/my_e_greeting_cards_screen/my_e_greeting_cards_screen.dart';
import 'package:digitalcards/presentation/make_payment_screen/make_payment_screen.dart';
import 'package:digitalcards/presentation/change_password_screen/change_password_screen.dart';
import 'package:digitalcards/presentation/image_modify_screen/image_modify_screen.dart';
import 'package:digitalcards/presentation/footer_screen/footer_screen.dart';
import 'package:digitalcards/presentation/icon_group_screen/icon_group_screen.dart';
import 'package:digitalcards/presentation/bands_screen/bands_screen.dart';
import 'package:digitalcards/presentation/link_screen/link_screen.dart';
import 'package:digitalcards/presentation/share_screen/share_screen.dart';
import 'package:digitalcards/presentation/advanced_screen/advanced_screen.dart';
import 'package:digitalcards/presentation/band_link_screen/band_link_screen.dart';
import 'package:digitalcards/presentation/band_note_screen/band_note_screen.dart';
import 'package:digitalcards/presentation/band_map_screen/band_map_screen.dart';
import 'package:digitalcards/presentation/band_video_screen/band_video_screen.dart';
import 'package:digitalcards/presentation/band_picture_screen/band_picture_screen.dart';
import 'package:digitalcards/presentation/band_contactband_screen/band_contactband_screen.dart';
import 'package:digitalcards/presentation/band_icongroup_screen/band_icongroup_screen.dart';
import 'package:digitalcards/presentation/band_banka_cdetails_screen/band_banka_cdetails_screen.dart';
import 'package:digitalcards/presentation/band_upicard_screen/band_upicard_screen.dart';
import 'package:digitalcards/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:digitalcards/presentation/template_preview/template_preview.dart';
import 'package:digitalcards/presentation/card_preview/card_preview.dart';
import 'package:digitalcards/presentation/location_selection/location_selection.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String homeOnboardingScreen = '/home_onboarding_screen';

  static const String welcomeScreen = '/welcome_screen';

  static const String signupScreen = '/signup_screen';

  static const String forgotPasswordoneScreen = '/forgot_passwordone_screen';

  static const String forgotPasswordtwoScreen = '/forgot_passwordtwo_screen';

  static const String homeScreen = '/home_screen';

  static const String digitalCardOptionsScreen = '/digital_card_options_screen';

  static const String basicCardEntryOneScreen = '/basic_card_entry_one_screen';

  static const String cardEntryOneScreen = '/card_entry_one_screen';

  static const String locationEntryScreen = '/location_entry_screen';

  static const String pictureLogoColorOneScreen =
      '/picture_logo_color_one_screen';

  static const String customizationOneScreen = '/customization_one_screen';

  static const String eGreetingCardOptionsScreen =
      '/e_greeting_card_options_screen';

  static const String basicCardEntryScreen = '/basic_card_entry_screen';

  static const String cardEntryScreen = '/card_entry_screen';

  static const String pictureLogoColorScreen = '/picture_logo_color_screen';

  static const String customizationScreen = '/customization_screen';

  static const String myProfileScreen = '/my_profile_screen';

  static const String myDigitalCardsScreen = '/my_digital_cards_screen';

  static const String myEGreetingCardsScreen = '/my_e_greeting_cards_screen';

  static const String makePaymentScreen = '/make_payment_screen';

  static const String changePasswordScreen = '/change_password_screen';

  static const String imageModifyScreen = '/image_modify_screen';

  static const String footerScreen = '/footer_screen';

  static const String iconGroupScreen = '/icon_group_screen';

  static const String bandsScreen = '/bands_screen';

  static const String linkScreen = '/link_screen';

  static const String shareScreen = '/share_screen';

  static const String advancedScreen = '/advanced_screen';

  static const String bandLinkScreen = '/band_link_screen';

  static const String bandNoteScreen = '/band_note_screen';

  static const String bandMapScreen = '/band_map_screen';

  static const String bandVideoScreen = '/band_video_screen';

  static const String bandPictureScreen = '/band_picture_screen';

  static const String bandContactbandScreen = '/band_contactband_screen';

  static const String bandIcongroupScreen = '/band_icongroup_screen';

  static const String bandBankaCdetailsScreen = '/band_banka_cdetails_screen';

  static const String bandUpicardScreen = '/band_upicard_screen';

  static const String cardpreview = '/card_preview';

  static const String templatepreview = '/template_preview';
  
  static const String locationselection = '/location_selection';

  static const String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: homeOnboardingScreen,
      page: () => HomeOnboardingScreen(),
      bindings: [
        HomeOnboardingBinding(),
      ],
    ),
    GetPage(
      name: welcomeScreen,
      page: () => const WelcomeScreen(),
    ),
    GetPage(
      name: signupScreen,
      page: () => const SignupScreen(),
    ),
    GetPage(
      name: forgotPasswordoneScreen,
      page: () => const ForgotPasswordoneScreen(),
    ),
    GetPage(
      name: forgotPasswordtwoScreen,
      page: () => const ForgotPasswordtwoScreen(),
    ),
    GetPage(
      name: homeScreen,
      page: () => const HomeScreen(),
    ),
    GetPage(
      name: digitalCardOptionsScreen,
      page: () => const DigitalCardOptionsScreen(),
    ),
    GetPage(
      name: basicCardEntryOneScreen,
      page: () => const BasicCardEntryOneScreen(),
    ),
    GetPage(
      name: cardEntryOneScreen,
      page: () => const CardEntryOneScreen(),
    ),
    GetPage(
      name: locationEntryScreen,
      page: () => const LocationEntryScreen(),
    ),
    GetPage(
      name: pictureLogoColorOneScreen,
      page: () => const PictureLogoColorOneScreen(),
    ),
    GetPage(
      name: customizationOneScreen,
      page: () => const CustomizationOneScreen(),
    ),
    GetPage(
      name: eGreetingCardOptionsScreen,
      page: () => const EGreetingCardOptionsScreen(),
    ),
    GetPage(
      name: basicCardEntryScreen,
      page: () => const BasicCardEntryScreen(),
    ),
    GetPage(
      name: cardEntryScreen,
      page: () => const CardEntryScreen(),
    ),
    GetPage(
      name: pictureLogoColorScreen,
      page: () => const PictureLogoColorScreen(),
    ),
    GetPage(
      name: customizationScreen,
      page: () => const CustomizationScreen(),
    ),
    GetPage(
      name: myProfileScreen,
      page: () => const MyProfileScreen(),
    ),
    GetPage(
      name: myDigitalCardsScreen,
      page: () => const MyDigitalCardsScreen(),
    ),
    GetPage(
      name: myEGreetingCardsScreen,
      page: () => const MyEGreetingCardsScreen(),
    ),
    GetPage(
      name: makePaymentScreen,
      page: () => const MakePaymentScreen(),
    ),
    GetPage(
      name: changePasswordScreen,
      page: () => const ChangePasswordScreen(),
    ),
    GetPage(
      name: imageModifyScreen,
      page: () => const ImageModifyScreen(),
    ),
    GetPage(
      name: footerScreen,
      page: () => const FooterScreen(),
    ),
    GetPage(
      name: iconGroupScreen,
      page: () => const IconGroupScreen(),
    ),
    GetPage(
      name: bandsScreen,
      page: () =>const BandsScreen(),
    ),
    GetPage(
      name: linkScreen,
      page: () => const LinkScreen(),
    ),
    GetPage(
      name: shareScreen,
      page: () => const ShareScreen(),
    ),
    GetPage(
      name: advancedScreen,
      page: () => const AdvancedScreen(),
    ),
    GetPage(
      name: bandLinkScreen,
      page: () =>const BandLinkScreen(),
    ),
    GetPage(
      name: bandNoteScreen,
      page: () =>const BandNoteScreen(),
    ),
    GetPage(
      name: bandMapScreen,
      page: () =>const BandMapScreen(),
    ),
    GetPage(
      name: bandVideoScreen,
      page: () => const BandVideoScreen(),
    ),
    // GetPage(
    //   name: bandPictureScreen,
    //   page: () => BandPictureScreen(),
    // ),
    GetPage(
      name: cardpreview,
      page: () =>const CardPreviewScreen(),
    ),
    
    GetPage(
      name: locationselection,
      page: () =>const LocationSelectionScreen(),
    ),
    GetPage(
      name: templatepreview,
      page: () =>const TemplatePreviewScreen(),
    ),
    GetPage(
      name: bandContactbandScreen,
      page: () =>const BandContactbandScreen(),
    ),
    GetPage(
      name: bandIcongroupScreen,
      page: () =>const BandIcongroupScreen(),
    ),
    GetPage(
      name: bandBankaCdetailsScreen,
      page: () =>const BandBankaCdetailsScreen(),
    ),
    // GetPage(
    //   name: bandUpicardScreen,
    //   page: () => BandUpicardScreen(),
    // ),
    GetPage(
      name: appNavigationScreen,
      page: () =>const AppNavigationScreen(),
    ),
    GetPage(
      name: initialRoute,
      page: () => HomeOnboardingScreen(),
    )
  ];
}
