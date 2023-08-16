import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phone_reader/config/theme/light_theme.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    Divider divider = const Divider(
      indent: 40,
      thickness: 1,
    );

    return SingleChildScrollView(
      child: Column(
        children: [
          ListTile(
            titleAlignment: ListTileTitleAlignment.center,
            leading: const Icon(
              Icons.person_3_outlined,
              size: 18,
              color: LightTheme.primaryColor,
            ),
            minLeadingWidth: 10,
            title: Text(
              'Profile',
              style: GoogleFonts.roboto(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: LightTheme.primaryColor,
              ),
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              size: 18,
              color: LightTheme.grey,
            ),
            onTap: () => Navigator.pushNamed(context, 'Profile'),
          ),
          divider,
          ListTile(
            titleAlignment: ListTileTitleAlignment.center,
            leading: const Icon(
              Icons.person,
              size: 18,
              color: LightTheme.primaryColor,
            ),
            minLeadingWidth: 10,
            title: Text(
              'Account',
              style: GoogleFonts.roboto(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: LightTheme.primaryColor,
              ),
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              size: 18,
              color: LightTheme.grey,
            ),
            onTap: () => Navigator.pushNamed(context, 'Profile'),
          ),
          divider,
          ListTile(
            titleAlignment: ListTileTitleAlignment.center,
            leading: const Icon(
              Icons.star_border_outlined,
              size: 18,
              color: LightTheme.primaryColor,
            ),
            minLeadingWidth: 10,
            title: Text(
              'Interests',
              style: GoogleFonts.roboto(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: LightTheme.primaryColor,
              ),
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              size: 18,
              color: LightTheme.grey,
            ),
            onTap: () => Navigator.pushNamed(context, 'Profile'),
          ),
          divider,
          ListTile(
            titleAlignment: ListTileTitleAlignment.center,
            leading: const Icon(
              Icons.notifications_none_rounded,
              size: 18,
              color: LightTheme.primaryColor,
            ),
            minLeadingWidth: 10,
            title: Text(
              'Notifications',
              style: GoogleFonts.roboto(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: LightTheme.primaryColor,
              ),
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              size: 18,
              color: LightTheme.grey,
            ),
            onTap: () => Navigator.pushNamed(context, 'Profile'),
          ),
          divider,
          ListTile(
            titleAlignment: ListTileTitleAlignment.center,
            leading: const Icon(
              Icons.mode_night_rounded,
              size: 18,
              color: LightTheme.primaryColor,
            ),
            minLeadingWidth: 10,
            title: Text(
              'Dark Mode',
              style: GoogleFonts.roboto(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: LightTheme.primaryColor,
              ),
            ),
            trailing: SizedBox(
              width: 30,
              height: 30,
              child: Switch(
                value: false,
                onChanged: (value) {},
                activeColor: LightTheme.primaryColor,
                inactiveThumbColor: LightTheme.primaryColor,
              
              ),
            ), 
          ),
          divider,
          ListTile(
            titleAlignment: ListTileTitleAlignment.center,
            leading: const Icon(
              Icons.question_mark,
              size: 18,
              color: LightTheme.primaryColor,
            ),
            minLeadingWidth: 10,
            title: Text(
              'Terms & Conditions',
              style: GoogleFonts.roboto(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: LightTheme.primaryColor,
              ),
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              size: 18,
              color: LightTheme.grey,
            ),
            onTap: () => Navigator.pushNamed(context, 'Profile'),
          ),
          divider,
          ListTile(
            titleAlignment: ListTileTitleAlignment.center,
            leading: const Icon(
             Icons.question_mark,
              size: 18,
              color: LightTheme.primaryColor,
            ),
            minLeadingWidth: 10,
            title: Text(
              'About',
              style: GoogleFonts.roboto(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: LightTheme.primaryColor,
              ),
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              size: 18,
              color: LightTheme.grey,
            ),
            onTap: () => Navigator.pushNamed(context, 'Profile'),
          ),
          divider,
          ListTile(
            titleAlignment: ListTileTitleAlignment.center,
            leading: const Icon(
              Icons.logout,
              size: 18,
              color: LightTheme.primaryColor,
            ),
            minLeadingWidth: 10,
            title: Text(
              'Log Out',
              style: GoogleFonts.roboto(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: LightTheme.primaryColor,
              ),
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              size: 18,
              color: LightTheme.grey,
            ),
            onTap: () => Navigator.pushNamed(context, 'Profile'),
          ),
          divider,
        ],
      ),
    );
  }
}
