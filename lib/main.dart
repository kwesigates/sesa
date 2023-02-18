import 'package:flutter/material.dart';
import 'package:sesa/accountpage_features/account_settings_page.dart';
// import 'package:sesa/pages/account.dart';
import 'package:sesa/pages/e_waste_page.dart';
import 'package:sesa/accountpage_features/help_and_support_page.dart';
import 'package:sesa/pages/home.dart';
import 'package:sesa/location/location.dart';
import 'package:sesa/auth/loginpage.dart';
import 'package:sesa/accountpage_features/payment_history_page.dart';
import 'package:sesa/accountpage_features/payment_info_page.dart';
import 'package:sesa/accountpage_features/user_profile_page.dart';
import 'package:sesa/pages/onboarding.dart';
import 'package:sesa/pages/recyclables_page.dart';
import 'package:sesa/pages/rewards_page.dart';
import 'package:sesa/auth/signuppage.dart';
import 'package:sesa/accountpage_features/security_page.dart';



void main() => runApp(Sesa());

class Sesa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sesa',
      initialRoute: '/',
      routes: {
        '/': (context) => const OnboardingScreen(),
        // '/login': (context) => const LoginPage(),
        // '/signup': (context) => const SignupPage(),
        // // '/account': (context) => Account(),
        // '/profile': (context) => const ProfilePage(),
        // '/account_settings': (context) => AccountSettingsPage(),
        // '/payment_history': (context) => PaymentHistoryPage(),
        // '/payment_info': (context) => const PaymentInfoPage(),
        // '/security': (context) => const SecurityPage(),
        // '/help_support': (context) => HelpAndSupportPage(),
        // '/e_waste': (context) => const EwastePage(),
        // '/recyclables': (context) => const RecyclablesPage(),
      },
    );
  }
}
