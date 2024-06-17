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
            Image.network(
              'https://s3-alpha-sig.figma.com/img/278e/a5b3/0c6e41d72a229dc53bab8b7ea95ab849?Expires=1719792000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=f5nLJT5jKFPSE54ODAXKB68n~~bYtpdKzwRC4IG1RYEnPjm8UeT5D~x6TJJusnMlFayWtDMmKro1LE9GUf7BEuFaf0H8oxjVyJcAlr8qogpekpnp7ek-BZY5tloE53Wuu8ZCX5IM0MY2Ca-GgBc5BtUYsN6uGXPe0aKvu9lxU20U-ygXl-fOOrfnl1Ga8s0ttful~9Sh09zGB5TWCctiUC~AARMw2J7KPbF1eTNXyPaJkK5wmstcN-3P~UtGljJOV9udt6Ast9dl4BKKKD~F6DVIi7U~ZsWqmBe7OED5ZNmIMmhKfC0fs7AwSum5Rib-VnJZj0TT~cMAqQB2O-94yQ__', 
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
                    'https://s3-alpha-sig.figma.com/img/ab20/f316/d8e38efe2739a55964cec2aae334d474?Expires=1719792000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=VQKt1v2175fXzD2Of5xmq6zWJqFZrzc5Os4hKGbd89SV7BbQafQT18Qb-pfEg-rgh0ZnxebblQRSWCDWOoXUXQSlsoW923gQLk8FQe8tVAcN7ejOkiK3Ou9E~xcJM8o2w~S3N9MuTtRG~5sa9MTLYWIk~7qZxAAZwUIaQI6UM4ReJOvd2pMZhOM1Ix5pOxOdjRJmbPj57oKlBrumVj-Vj46dIvEqvEvj3GWPe9TogwJ9FbnImAzBE7VkezUympjY7NHovzgFMnf~b6XlG-IT~4r~~FlQ8jq-jxTV2biM-mIU3x7XJiRfFvGa~ta8~1I4LCus67-dnhVtTD8oDUnqaA__'),
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