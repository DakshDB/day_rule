import 'package:enhanced_you/screens/profile/settings/general_settings/change_name.dart';
import 'package:enhanced_you/screens/profile/settings/general_settings/gender_identity.dart';
import 'package:enhanced_you/widgets/header.dart';
import 'package:enhanced_you/widgets/setting_tile.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../widgets/setting_group_card.dart';

class GeneralSettings extends StatefulWidget {
  const GeneralSettings({super.key});

  @override
  State<GeneralSettings> createState() => _GeneralSettingsState();
}

class _GeneralSettingsState extends State<GeneralSettings> {
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
                // Header
                const Header(title: 'General'),
                // Card 1 (General Settings and Notifications Button)
                SettingGroupCard(
                    title: "Personal Settings",
                    children: [
                      SettingTile(
                          icon: Icons.person_outline,
                    title: 'Change Name',
                    onTap:  () {
                      ChangeName.showDialogBox(
                        context: context,
                        title: 'Change Name',
                        body: 'Save your name to your profile',
                        buttonText: 'Save',
                        onPressedButton: () {
                          Navigator.pop(context);
                        },
                      );
                    },
                      ),
                      SettingTile(
                          icon: Icons.g_mobiledata_outlined,
                        title: "Gender Identity",
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const GenderIdentity(),
                            ),
                          );
                        },
                      )
                    ]
                ),
                // Card 2 (Favorites and Past Rules Button)
                SettingGroupCard(
                  title: 'Support Us',
                  children: [
                    SettingTile(
                      icon: Icons.favorite_border_outlined,
                      title: 'Share',
                      onTap: () {
                        // Open Share panel
                        Share.shareWithResult('Check out Day Rule! https://dayrule.page.link/invite');
                      },
                    ),
                    SettingTile(
                      icon: Icons.star_border_outlined,
                      title: 'Leave a Review',
                      onTap: () {
                        final Uri url = Uri.parse('https://flutter.dev');
                        launchUrl(url);
                      },
                    ),

                  ],
                ),
                // Card 3 (Give Feedback and Help Button)
                SettingGroupCard(
                  title: 'Help',
                  children: [
                    SettingTile(
                      icon: Icons.help_outline,
                      title: 'FAQs',
                      onTap: () {
                        final Uri url = Uri.parse('https://flutter.dev');
                        launchUrl(url);
                      },
                    ),
                    SettingTile(
                      icon: Icons.contact_support_outlined,
                      title: 'Contact Us',
                      onTap: () {
                        final Uri url = Uri.parse('https://flutter.dev');
                        launchUrl(url);
                      },
                    ),
                  ],
                ),
                // Card 4 (Privacy Policy and Terms and Conditions Button)
                SettingGroupCard(
                  title: 'Other',
                  children: [
                    SettingTile(
                        icon: Icons.privacy_tip,
                        title: 'Privacy Policy',
                        onTap: () {
                          final Uri url = Uri.parse('https://flutter.dev');
                          launchUrl(url);
                        },
                    ),
                    SettingTile(
                        icon: Icons.policy_outlined,
                        title: 'Terms and Conditions',
                        onTap: () {
                          final Uri url = Uri.parse('https://flutter.dev');
                          launchUrl(url);
                        },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
