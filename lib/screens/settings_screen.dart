import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Row(
                children: [
                  Icon(Icons.arrow_back, color: Colors.white),
                  SizedBox(width: 4),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Text(
                      'Back',
                      style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 10),
            Text('Settings'),
          ],
        ),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          width: 430,
          height: 932,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                buildCategoryTitle('Notifications'),
                buildCategoryItems(
                  ['Enable/Disable'],
                  Colors.blue,
                  Colors.white,
                  height: 60,
                ),
                buildCategoryTitle('Feedback and support'),
                buildCategoryItems(
                  ['Report issues', 'Provide feedback', 'Ask support/help'],
                  Colors.blue,
                  Colors.white,
                ),
                buildCategoryTitle('Privacy'),
                buildCategoryItems(
                  ['Sharing data', 'Account privacy', 'Location and services'],
                  Colors.blue,
                  Colors.white,
                ),
                buildCategoryTitle('General preferences'),
                buildCategoryItems(
                  ['Language', 'Theme', 'Appearance'],
                  Colors.blue,
                  Colors.white,
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.settings, color: Colors.black),
                    SizedBox(width: 8),
                    Text(
                      'Settings List',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Container(
                  width: 200,
                  child: Column(
                    children: [
                      buildSettingTile(context, 'Notifications', Colors.orange, Icons.notifications),
                      buildSettingTile(context, 'Privacy', Colors.green, Icons.lock),
                      buildSettingTile(context, 'Preferences', Colors.blue, Icons.settings),
                      buildSettingTile(context, 'Accessibility', Colors.purple, Icons.accessibility),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildCategoryTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        title,
        style: TextStyle(color: Colors.green, fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget buildCategoryItems(List<String> items, Color backgroundColor, Color textColor, {double height = 112}) {
    return Container(
      width: 294,
      height: height,
      margin: EdgeInsets.only(bottom: 16.0),
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: items.map((item) => Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0),
          child: Text(item, style: TextStyle(color: textColor)),
        )).toList(),
      ),
    );
  }

  Widget buildSettingTile(BuildContext context, String title, Color color, IconData icon) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: color,
          child: Icon(icon, color: Colors.white),
        ),
        title: Text(title),
        onTap: () {
          // Handle tap
        },
      ),
    );
  }
}

void main() => runApp(MaterialApp(
  home: SettingsScreen(),
));
