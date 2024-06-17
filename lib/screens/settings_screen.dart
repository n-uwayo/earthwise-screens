import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Settings')),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 16.0),
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Notifications', style: TextStyle(color: Colors.white, fontSize: 18)),
                Switch(value: true, onChanged: (value) {}),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 16.0),
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Other Setting 1', style: TextStyle(color: Colors.white, fontSize: 18)),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 16.0),
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Other Setting 2', style: TextStyle(color: Colors.white, fontSize: 18)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
