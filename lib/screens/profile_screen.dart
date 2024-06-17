import 'package:flutter/material.dart';

import '../main.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(
              'assets/ew.png', 
              height: 30,
            ),
            SizedBox(width: 8),
            Text('User profile'),
          ],
        ),
        backgroundColor: Colors.green,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: [
            Tab(text: 'Personal'),
            Tab(text: 'Achievements'),
            Tab(text: 'Settings'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          buildProfileTab(),
          Center(child: Text('Achievements')),
          Center(child: Text('Settings')),
        ],
      ),
    );
  }

  Widget buildProfileTab() {
  return Center(
    child: SingleChildScrollView(
      child: Container(
        width: 430, 
        margin: EdgeInsets.all(16.0),
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://storage.needpix.com/rsynced_images/profile-2092113_1280.png'),
                radius: 40,
              ),
              SizedBox(height: 20),
              buildProfileItem('Full Name', 'Innocent Manzi'),
              buildProfileItem('Email', 'innocent231@gmail.com'),
              buildProfileItem('First name', 'Manzi'),
              buildProfileItem('Last name', 'Innocente'),
              buildProfileItem('City', 'Kigali'),
              buildProfileItem('Country', 'Rwanda'),
              buildProfileItem('Your interest', 'Wildlife conservation...'),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  // Navigate to main screen
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => MainScreen(), // Replace MainScreen with your main screen widget
                    ),
                  );
                },
                child: Text('Log out'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}


  Widget buildProfileItem(String title, String placeholder) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '$title:',
          style: TextStyle(color: Colors.black, fontSize: 14), 
        ),
        SizedBox(width: 10),
        Container(
          width: 258, 
          child: TextFormField(
            style: TextStyle(color: Colors.white), 
            decoration: InputDecoration(
              hintText: placeholder,
              hintStyle: TextStyle(color: Colors.white), 
              contentPadding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(53),
                borderSide: BorderSide.none,
              ),
              filled: true,
              fillColor: Colors.blue,
              labelStyle: TextStyle(color: Colors.black), 
            ),
            enabled: false, 
          ),
        ),
      ],
    ),
  );
}
}