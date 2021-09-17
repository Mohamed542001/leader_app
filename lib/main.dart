import 'package:flutter/material.dart';
import 'package:leader_app/AboutUs.dart';
import 'package:leader_app/All_Orders.dart';
import 'package:leader_app/AppLanguage.dart';
import 'package:leader_app/Cart.dart';
import 'package:leader_app/Categories.dart';
import 'package:leader_app/Change_ProfilePassword.dart';
import 'package:leader_app/Confirm_Order.dart';
import 'package:leader_app/ContactUs.dart';
import 'package:leader_app/Favorite.dart';
import 'package:leader_app/Finished_OrderDetails.dart';
import 'package:leader_app/HomeScreen.dart';
import 'package:leader_app/Language.dart';
import 'package:leader_app/Login.dart';
import 'package:leader_app/MyBottomNavigationBar.dart';
import 'package:leader_app/New_OrderDetails.dart';
import 'package:leader_app/New_Password.dart';
import 'package:leader_app/New_Registration.dart';
import 'package:leader_app/Notification.dart';
import 'package:leader_app/Processing_OrderDetails.dart';
import 'package:leader_app/Product_Details.dart';
import 'package:leader_app/Restore_Password.dart';
import 'package:leader_app/Returns_OrderDetails.dart';
import 'package:leader_app/Setting.dart';
import 'package:leader_app/Shipping_Address.dart';
import 'package:leader_app/Shipping_OrderDetails.dart';
import 'package:leader_app/Splash.dart';
import 'package:leader_app/Success_Order.dart';
import 'package:leader_app/T_shirts.dart';
import 'package:leader_app/TermsAndConditions.dart';
import 'package:leader_app/Verify_Register.dart';
import 'package:leader_app/Verify_Restore.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // where theme !!!
      home: SplashScreen(),
      routes: {
        'HomeScreen':(context)=>HomeScreen(),
        'LoginScreen':(context)=>LoginScreen(),
        'LanguageScreen':(context)=>LanguageScreen(),
        'RestorePassword':(context)=>RestorePassword(),
        'VerifyRestore':(context)=>VerifyRestore(),
        'NewPassword':(context)=>NewPassword(),
        'NewRegistration':(context)=>NewRegistration(),
        'TermsAndConditions':(context)=>TermsAndConditions(),
        'NotificationScreen':(context)=>NotificationScreen(),
        'VerifyRegister':(context)=>VerifyRegister(),
        'CategoriesScreen':(context)=>CategoriesScreen(),
        'MyBottomNavigationBar':(context)=>MyBottomNavigationBar(),
        'TshirtScreen':(context)=>TshirtScreen(),
        'AppLanguage':(context)=>AppLanguage(),
        'AboutScreen':(context)=>AboutScreen(),
        'ContactUs':(context)=>ContactUs(),
        'NewOrderDetails':(context)=>NewOrderDetails(),
        'ProcessingOrderDetails':(context)=>ProcessingOrderDetails(),
        'ShippingOrderDetails':(context)=>ShippingOrderDetails(),
        'FinishedOrderDetails':(context)=>FinishedOrderDetails(),
        'DeliveredOrderDetails':(context)=>ReturnsOrderDetails(),
        'SettingScreen':(context)=>SettingScreen(),
        'ChangeProfilePassword':(context)=>ChangeProfilePassword(),
        'OrdersScreen':(context)=>OrdersScreen(),
        'ProductDetails':(context)=>ProductDetails(),
        'CartScreen':(context)=>CartScreen(),
        'ShippingAddress':(context)=>ShippingAddress(),
        'ConfirmOrderScreen':(context)=>ConfirmOrderScreen(),
        'SuccessOrderScreen':(context)=>SuccessOrderScreen(),
      },
    );
  }
}

