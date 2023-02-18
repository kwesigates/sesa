import 'package:flutter/material.dart';

class SecurityPage extends StatefulWidget {
  const SecurityPage({Key? key}) : super(key: key);

  @override
  _SecurityPageState createState() => _SecurityPageState();
}

class _SecurityPageState extends State<SecurityPage> {
  bool _twoFactorEnabled = false;
  bool _biometricEnabled = false;

  void _toggleTwoFactor() {
    setState(() {
      _twoFactorEnabled = !_twoFactorEnabled;
    });
  }

  void _toggleBiometric() {
    setState(() {
      _biometricEnabled = !_biometricEnabled;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Security'),
      ),
      body: Column(
        children: [
          SwitchListTile(
            title: const Text('Two-Factor Authentication'),
            value: _twoFactorEnabled,
            onChanged: (value) {
              _toggleTwoFactor();
            },
          ),
          SwitchListTile(
            title: const Text('Biometric Authentication'),
            value: _biometricEnabled,
            onChanged: (value) {
              _toggleBiometric();
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.lock_outline),
            title: const Text('Change Password'),
            onTap: () {
              // Navigate to change password screen
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Sign Out'),
            onTap: () {
              // Implement sign out logic
            },
          ),
        ],
      ),
    );
  }
}
