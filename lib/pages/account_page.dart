import 'package:flutter/material.dart';

import 'package:sesa/accountpage_features/account_settings_page.dart';
import 'package:sesa/accountpage_features/help_and_support_page.dart';
import 'package:sesa/accountpage_features/payment_history_page.dart';
import 'package:sesa/accountpage_features/payment_info_page.dart';
import 'package:sesa/accountpage_features/security_page.dart';
import 'package:sesa/accountpage_features/user_profile_page.dart';


class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Account'),
      ),
      body: ListView(
        children: [
          // _buildTile(
          //   context,
          //   'User Profile Information',
          //   Icons.person,
          //   () => Navigator.push(
          //     context,
          //     MaterialPageRoute(
          //       builder: (context) => UserProfilePage(),
          //     ),
          //   ),
          // ),
          _buildTile(
            context,
            'Account Settings',
            Icons.settings,
            () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AccountSettingsPage(),
              ),
            ),
          ),
          _buildTile(
            context,
            'Payment History',
            Icons.history,
            () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PaymentHistoryPage(),
              ),
            ),
          ),
          _buildTile(
            context,
            'Payment Information',
            Icons.payment,
            () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PaymentInfoPage(),
              ),
            ),
          ),
          _buildTile(
            context,
            'Security',
            Icons.security,
            () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SecurityPage(),
              ),
            ),
          ),
          _buildTile(
            context,
            'Help and Support',
            Icons.help,
            () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HelpAndSupportPage(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  ListTile _buildTile(
      BuildContext context, String title, IconData icon, VoidCallback onTap) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      onTap: onTap,
    );
  }
}
