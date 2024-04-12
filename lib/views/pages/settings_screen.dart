import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart'; // For Cupertino widgets

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24), // Global padding for left and right
        child: ListView(
          children: [
            Column(
              children: [
                CircleAvatar(
                  radius: 40,
                  child: Text('B'),
                  backgroundColor: Colors.teal[200],
                ),
                SizedBox(height: 24), // Spacing after the avatar
                // A method to build each ListTile with Divider
                _buildListItem(
                  icon: 'assets/images/profile.svg',
                  title: 'Edit Profile',
                  context: context,
                ),
                _buildListItem(
                  icon: 'assets/images/wallet.svg',
                  title: 'Wallet',
                  context: context,
                ),
                _buildListItem(
                  icon: 'assets/images/settings.svg',
                  title: 'Settings',
                  context: context,
                ),
                SwitchListTile(
                  activeColor: Colors.teal,
                  secondary: SvgPicture.asset('assets/images/wallet.svg'),
                  title: Text('Notifications'),
                  value: true,
                  onChanged: (bool value) {
                    // Handle notification switch toggle
                  },
                ),
                Divider(),
                SwitchListTile(
                  activeColor: Colors.teal,
                  secondary: SvgPicture.asset('assets/images/notification.svg'),
                  title: Text('Dark Mode'),
                  value: false,
                  onChanged: (bool value) {
                    // Handle dark mode switch toggle
                  },
                ),
                Divider(),
                ListTile(
                  leading: SvgPicture.asset('assets/images/Logout.svg'),
                  title: Text('Log Out', style: TextStyle(color: Colors.red)),
                  onTap: () {
                    // Handle logout action
                  },
                ),
                SizedBox(height:100,)
              ],
            ),
          ],
        ),
      ),
    );
}
  Widget _buildListItem({required String icon, required String title, required BuildContext context}) {
    return Column(
      children: [
        ListTile(
          leading: SvgPicture.asset(icon),
          title: Text(title),
          trailing: Icon(Icons.arrow_forward_ios),
          onTap: () {
            // Handle item tap
          },
        ),
        Divider(),
      ],
    );
  }
}