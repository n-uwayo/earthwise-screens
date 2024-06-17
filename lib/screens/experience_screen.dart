import 'package:flutter/material.dart';

class ExperienceScreen extends StatelessWidget {
  final List<Map<String, String>> experiences = [
    {
      'image': 'https://via.placeholder.com/50',
      'title': 'Experience 1',
      'description': 'Description of Experience 1',
      'date': 'Date 1',
    },
    {
      'image': 'https://via.placeholder.com/50',
      'title': 'Experience 2',
      'description': 'Description of Experience 2',
      'date': 'Date 2',
    },
    {
      'image': 'https://via.placeholder.com/50',
      'title': 'Experience 3',
      'description': 'Description of Experience 3',
      'date': 'Date 3',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Experience')),
      body: ListView.builder(
        padding: EdgeInsets.all(16.0),
        itemCount: experiences.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(bottom: 16.0),
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.network(experiences[index]['image']!),
                    SizedBox(width: 10),
                    Text(experiences[index]['title']!, style: TextStyle(color: Colors.white, fontSize: 18)),
                  ],
                ),
                SizedBox(height: 10),
                Text(experiences[index]['description']!, style: TextStyle(color: Colors.white)),
                SizedBox(height: 5),
                Text(experiences[index]['date']!, style: TextStyle(color: Colors.white70)),
              ],
            ),
          );
        },
      ),
    );
  }
}
