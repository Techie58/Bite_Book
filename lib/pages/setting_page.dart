import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:babstrap_settings_screen/babstrap_settings_screen.dart';
import 'package:bite_book/models/setting_screen_model.dart';
import 'package:bite_book/utils/colors.dart';
import 'package:bite_book/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget{
  final List<SettingScreenModel> settings;

  const SettingPage({super.key, required this.settings});

  @override
  State<StatefulWidget> createState() => _SettingPageState();

}

class _SettingPageState extends State<SettingPage>{
  bool isDark = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myTransparentGrey,
      appBar: AppBar(title: Text('Settings',style: TextStyle(color: myMainBlueColor,fontSize: 34,fontWeight: FontWeight.bold),),
      backgroundColor: myTransparentGrey,),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [

            // User card
            BigUserCard(
              backgroundColor: myMainBlueColor,
              settingColor: Colors.white.withOpacity(0.5),
              userName: userName,
              userProfilePic: AssetImage(userPic),
              cardActionWidget: SettingsItem(
                icons: Icons.edit,
                iconStyle: IconStyle(
                  withBackground: true,
                  borderRadius: 50,
                  backgroundColor: Colors.lightGreen,
                ),
                title: "Modify",
                subtitle: "Tap to change your data",
                onTap: () {
                  print("OK");
                },
              ),
            ),
            SettingsGroup(
              backgroundColor: Colors.white,
              items: [
                SettingsItem(
                  onTap: () {},
                  icons: CupertinoIcons.pencil_outline,
                  iconStyle: IconStyle(),
                  title: 'Appearance',
                  subtitle: "Change the Appearace Here",
                ),

                SettingsItem(
                  onTap: () {},
                  icons: Icons.dark_mode_rounded,
                  iconStyle: IconStyle(
                    iconsColor: Colors.white,
                    withBackground: true,
                    backgroundColor: Colors.red,
                  ),
                  title: isDark ? "Dark Mode" : "Light Mode",
                    titleStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                    
                  trailing: AnimatedToggleSwitch<bool>.dual(
                    current: isDark,
                    first: true,
                    second: false,
                    spacing: 20.0,
                    borderWidth: 1.5,
                    height: 58, // Slightly taller for better proportions
                    onChanged: (val) => setState(() => isDark = val),

                    style: ToggleStyle(
                      borderColor: isDark
                          ? Colors.grey.shade800
                          : Colors.grey.shade300,
                      backgroundColor: isDark
                          ? Colors.grey.shade900.withOpacity(0.8)
                          : Colors.white,
                      borderRadius: BorderRadius.circular(30), // More pronounced rounded corners
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.08),
                          spreadRadius: 1,
                          blurRadius: 8,
                          offset: const Offset(0, 2),
                        ),
                        if (!isDark) // Subtle inner shadow for light mode
                          BoxShadow(
                            color: Colors.white.withOpacity(0.8),
                            spreadRadius: -2,
                            blurRadius: 4,
                            offset: const Offset(0, -1),
                          ),
                      ],
                    ),

                    styleBuilder: (isDarkMode) => ToggleStyle(
                      indicatorColor: isDarkMode
                          ? Colors.grey.shade900 // Dark charcoal instead of pure black
                          : Colors.white,
                      indicatorBoxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(isDarkMode ? 0.3 : 0.1),
                          spreadRadius: 1,
                          blurRadius: 6,
                          offset: const Offset(0, 1.5),
                        ),
                      ],
                      indicatorBorder: Border.all(
                        color: isDarkMode
                            ? Colors.grey.shade700
                            : Colors.grey.shade200,
                        width: 1.5,
                      ),
                      borderRadius: BorderRadius.circular(26),
                    ),

                    iconBuilder: (isDarkMode) => AnimatedSwitcher(
                      duration: const Duration(milliseconds: 300),
                      transitionBuilder: (child, animation) => ScaleTransition(
                        scale: animation,
                        child: FadeTransition(
                          opacity: animation,
                          child: child,
                        ),
                      ),
                      child: isDarkMode
                          ? Icon(
                        Icons.nights_stay_rounded, // Rounded variant
                        key: const ValueKey('dark'),
                        color: Colors.amber.shade300, // Warm amber for dark mode
                        size: 26,
                      )
                          : Icon(
                        Icons.wb_sunny_rounded, // Rounded variant
                        key: const ValueKey('light'),
                        color: Colors.orange.shade600, // Bright orange for light
                        size: 26,
                      ),
                    ),

                    textBuilder: (isDarkMode) => AnimatedDefaultTextStyle(
                      duration: const Duration(milliseconds: 300),
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.5,
                        color: isDarkMode
                            ? Colors.grey.shade300
                            : Colors.grey.shade800,
                      ),
                      child: isDarkMode
                          ? const Text('DARK')
                          : const Text('LIGHT'),
                    ),

                  )
                ),
              ],
            ),
            SettingsGroup(
              backgroundColor: Colors.white,
              items: [
                SettingsItem(
                  onTap: () {},
                  icons: Icons.info_rounded,
                  iconStyle: IconStyle(
                    backgroundColor: Colors.purple,
                  ),
                  title: 'About',
                  subtitle: "Learn more about Bite Book App",
                ),
              ],
            ),
            // You can add a settings title
            SettingsGroup(
              backgroundColor: Colors.white,
              settingsGroupTitle: "Account",
              items: [
                SettingsItem(
                  onTap: () {},
                  icons: Icons.exit_to_app_rounded,
                  titleStyle: TextStyle(color: Colors.red),
                  title: "Sign Out",
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}