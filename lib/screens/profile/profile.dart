import 'package:enhanced_you/screens/profile/settings/general_settings/general_settings.dart';
import 'package:enhanced_you/screens/profile/settings/reminders/reminder_settings.dart';
import 'package:enhanced_you/screens/profile/your_rules/favourties.dart';
import 'package:enhanced_you/screens/profile/your_rules/past_rules.dart';
import 'package:enhanced_you/widgets/header.dart';
import 'package:enhanced_you/widgets/setting_group_card.dart';
import 'package:enhanced_you/widgets/setting_tile.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScrollConfiguration(
        behavior: const ScrollBehavior().copyWith(overscroll: false),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Header(title: 'Day Rule'),

                // Card 1 (General Settings and Notifications Button)
                SettingGroupCard(
                    title: 'Settings',
                    children: [
                      SettingTile(
                          icon: Icons.settings_outlined, title: 'General',
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const GeneralSettings()));
                          }
                      ),
                      SettingTile(
                          icon: Icons.notifications_outlined, title: 'Reminders',
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const NotificationSettings()));
                          }
                      ),
                    ]
                ),

                // Your Rules Area (Your Rules, Add Rule)
                SettingGroupCard(
                  title: 'Your Rules',
                  children: [
                    SettingTile(
                      icon: Icons.favorite_border_outlined, title: 'Favorites',
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Favourites()));
                      }
                    ),
                    SettingTile(
                      icon: Icons.history_outlined, title: 'Past Rules',
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const PastRules()));
                      }
                    ),
                  ]
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}