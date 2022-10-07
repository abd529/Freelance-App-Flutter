// ignore_for_file: prefer_const_constructors, unused_import, prefer_const_literals_to_create_immutables

import 'dart:developer';
import 'package:be_pass/ForgetPasswordView/resetPassword.dart';
import 'package:be_pass/ForgetPasswordView/verifyEmail.dart';
import 'package:be_pass/Screens/bio_screen.dart';
import 'package:be_pass/Screens/certificates_screen.dart';
import 'package:be_pass/Screens/changeEmail.dart';
import 'package:be_pass/Screens/changePassword.dart';
import 'package:be_pass/Screens/changeUserName.dart';
import 'package:be_pass/Screens/credits_screen.dart';
import 'package:be_pass/Screens/filters_screen.dart';
import 'package:be_pass/Screens/home_screen.dart';
import 'package:be_pass/Screens/language_screen.dart';
import 'package:be_pass/Screens/social_screen.dart';
import 'package:be_pass/Screens/time_currency.dart';
import 'package:be_pass/Authentication/View/login_view.dart';
import 'package:be_pass/Screens/services.dart';
import 'package:be_pass/Authentication/View/sign_up_view.dart';
import 'package:be_pass/Screens/user_card.dart';
import 'package:be_pass/Screens/working_hours.dart';
import 'package:be_pass/Widgets/bottom_nav.dart';
import 'package:be_pass/l10n/l10n.dart';
import 'package:be_pass/test.dart';
import 'package:be_pass/utils/language_change_provider.dart';
import 'package:be_pass/workinghours.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'ForgetPasswordView/forgetPasswordView.dart';
import 'Screens/gallery_view.dart';
import 'Screens/general_profile_screen.dart';
import 'Screens/landingPageView.dart';
import 'Screens/profile_screen.dart';
import 'Screens/working_areas.dart';
import 'app_Colors.dart';
import 'Screens/splash_screen.dart';
import 'dart:math';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'generated/l10n.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

TextEditingController bla = TextEditingController();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<LanguageChangeProvider>(
      create: (context) => LanguageChangeProvider(),
      child: Builder(builder: (context) {
        return GetMaterialApp(
          locale: Locale("en"),
          //provider.currentLocale,
          //Locale("he"),
          supportedLocales: L10n.all,
          localizationsDelegates: [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            fontFamily: GoogleFonts.poppins().fontFamily,
            primarySwatch: generateMaterialColor(AppColors.gradientGreen),
          ),
          home: SplashScreen(),
          builder: EasyLoading.init(),
          routes: {
            GenProfile.routeName: (ctx) => GenProfile(),
            // Profile.routeName: (ctx) => Profile(false, false,
            //     "Here you can introduce yourself better write couple of words"),
            ForgetPasswordView.routeName: (ctx) => ForgetPasswordView(),
            ResetPasswordView.routeName: (ctx) => ResetPasswordView(),
            // LandingPageView.routeName: (ctx) => LandingPageView(true),
            LoginView.routeName: (ctx) => LoginView(),
            BottomBar.routeName: (ctx) => BottomBar(),
            ServicesScreen.routeName: (ctx) => ServicesScreen(),
            CertificatesScreen.routeName: (ctx) => CertificatesScreen(),
            BioScreen.routeName: (ctx) => BioScreen(),
            SocialScreen.routeName: (ctx) => SocialScreen(),
            WorkingHours.routeName: (ctx) => WorkingHours(),
            WorkingAreas.routeName: (ctx) => WorkingAreas(),
            CreditsScreen.routeName: (ctx) => CreditsScreen(),
            CurrencyTimeScreen.routeName: (ctx) => CurrencyTimeScreen(),
            LanguageScreen.routeName: (ctx) => LanguageScreen(),
            SignUpView.routeName: (ctx) => SignUpView(),
            ChangeEmailView.routeName: (ctx) => ChangeEmailView(),
            ChangeUserName.routeName: (ctx) => ChangeUserName(),
            VerifyEmailView.routeName: (ctx) => VerifyEmailView(),
            GalleryScreenView.routeName: (ctx) => GalleryScreenView(),
            // Search.routeName: (ctx) => Search(),
          },
        );
      }),
    );
  }
}

MaterialColor generateMaterialColor(Color color) {
  return MaterialColor(color.value, {
    50: tintColor(color, 0.9),
    100: tintColor(color, 0.8),
    200: tintColor(color, 0.6),
    300: tintColor(color, 0.4),
    400: tintColor(color, 0.2),
    500: color,
    600: shadeColor(color, 0.1),
    700: shadeColor(color, 0.2),
    800: shadeColor(color, 0.3),
    900: shadeColor(color, 0.4),
  });
}

int tintValue(int value, double factor) =>
    max(0, min((value + ((255 - value) * factor)).round(), 255));

Color tintColor(Color color, double factor) => Color.fromRGBO(
    tintValue(color.red, factor),
    tintValue(color.green, factor),
    tintValue(color.blue, factor),
    1);

int shadeValue(int value, double factor) =>
    max(0, min(value - (value * factor).round(), 255));

Color shadeColor(Color color, double factor) => Color.fromRGBO(
    shadeValue(color.red, factor),
    shadeValue(color.green, factor),
    shadeValue(color.blue, factor),
    1);
