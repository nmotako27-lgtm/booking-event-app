import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  final Color primaryColor = const Color(0xFF5669FF);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(
                      'assets/Image.png',
                    ), 
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'Ashfak Sayem',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  _drawerItem(icon: Icons.person_outline, text: 'My Profile'),
                  _drawerItem(icon: Icons.chat_bubble_outline, text: 'Message'),
                  _drawerItem(
                    icon: Icons.calendar_today_outlined,
                    text: 'Calendar',
                  ),
                  _drawerItem(icon: Icons.bookmark_border, text: 'Bookmark'),
                  _drawerItem(icon: Icons.mail_outline, text: 'Contact Us'),
                  _drawerItem(icon: Icons.settings_outlined, text: 'Settings'),
                  _drawerItem(icon: Icons.help_outline, text: 'Helps & FAQs'),
                  _drawerItem(icon: Icons.logout, text: 'Sign Out'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.stars, color: Color(0xFF00F8FF)),
                label: const Text(
                  'Upgrade Pro',
                  style: TextStyle(
                    color: Color(0xFF00F8FF),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(
                    0xFF00F8FF,
                  ).withValues(alpha: 0.1),
                  elevation: 0,
                  shadowColor: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: const EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _drawerItem({required IconData icon, required String text}) {
    return ListTile(
      leading: Icon(icon, color: Colors.black54),
      title: Text(
        text,
        style: const TextStyle(color: Colors.black87, fontSize: 16),
      ),
      onTap: () {},
    );
  }
}
