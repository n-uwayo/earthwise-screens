import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EventsScreen extends StatelessWidget {
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
            Text('Event Details'),
          ],
        ),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          width: 430,
          height: 932,
          padding: EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Event Details',
                        style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Title: Climate Change Workshop\n'
                        'Date and time: June 15, 2024, 11:00 AM - 3:00 PM\n'
                        'Location: Green Community Center, KK 127 St, Kigali',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Descriptions',
                        style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Join us for a hands-on workshop focused on actionable steps you can take to combat climate change. '
                        'Learn from experts in the field and connect with like-minded individuals passionate about making a difference.',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Agenda',
                        style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5),
                      Text(
                        '11:00 AM - 11:30 AM: Introduction and Keynote Address\n'
                        '11:30 AM - 12:30 PM: Breakout Sessions\n'
                        '12:30 PM - 1:30 PM: Lunch Break\n'
                        '1:30 PM - 3:00 PM: Hands-on Activities and Workshops\n'
                        '3:00 PM - 3:55 PM: Q&A and Networking\n'
                        '3:55 - 4:00 PM: Closing Remark',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Speakers/Hosts',
                        style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5),
                      Text(
                        '1. Dr. Jane Smith - Environmental Scientist\n'
                        '2. Dr. John Doe - Climate Activist',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(height: 20),
                      Center(
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text('Register'),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.red,
                            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Additional information, contact us at:',
                        style: TextStyle(color: Colors.black),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Email us: events@earthwise.com',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(height: 20),
                      Center(
                        child: Column(
                          children: [
                            Text(
                              'Follow us:',
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(FontAwesomeIcons.facebook, color: Colors.white),
                                SizedBox(width: 10),
                                Icon(FontAwesomeIcons.twitter, color: Colors.white),
                                SizedBox(width: 10),
                                Icon(FontAwesomeIcons.instagram, color: Colors.white),
                              ],
                            ),
                          ],
                        ),
                      ),
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
}

void main() => runApp(MaterialApp(
  home: EventsScreen(),
));
