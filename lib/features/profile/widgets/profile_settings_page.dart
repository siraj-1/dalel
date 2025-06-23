import 'package:flutter/material.dart';

class ProfileSettingsPage extends StatelessWidget {
  const ProfileSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F4F9), // Light background
      body: Expanded(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
          children: [
            const Text(
              "Account",
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),

            // Account Items
            _buildTile(
              context,
              icon: Icons.person,
              title: "Edit Profile",
              onTap: () {},
            ),
            _buildTile(
              context,
              icon: Icons.notifications,
              title: "Notification",
              onTap: () {},
            ),

            const SizedBox(height: 24),

            // General Section Header
            const Text(
              "General",
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),

            // General Items
            _buildTile(
              context,
              icon: Icons.settings,
              title: "Settings",
              onTap: () {},
            ),
            _buildTile(
              context,
              icon: Icons.lock,
              title: "Security",
              onTap: () {},
            ),
            _buildTile(
              context,
              icon: Icons.privacy_tip,
              title: "Privacy Policy",
              onTap: () {},
            ),
            _buildTile(
              context,
              icon: Icons.logout,
              title: "Log Out",
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTile(BuildContext context,
      {required IconData icon,
      required String title,
      required VoidCallback onTap}) {
    return Column(
      children: [
        ListTile(
          contentPadding: const EdgeInsets.symmetric(vertical: 4),
          leading: Icon(icon, color: const Color(0xFF7A4E2D)),
          title: Text(
            title,
            style: const TextStyle(
              color: Color(0xFF7A4E2D),
              fontWeight: FontWeight.w500,
            ),
          ),
          trailing: const Icon(Icons.arrow_forward_ios,
              size: 16, color: Color(0xFF7A4E2D)),
          onTap: onTap,
        ),
        const Divider(height: 1),
      ],
    );
  }
}
