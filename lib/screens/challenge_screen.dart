import 'package:flutter/material.dart';

class ChallengeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Challenge')),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(16.0),
          padding: EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.network('https://via.placeholder.com/150'),
              SizedBox(height: 10),
              Text('Challenge Details', style: TextStyle(color: Colors.white)),
              SizedBox(height: 10),
              ElevatedButton(onPressed: () {}, child: Text('Join Now')),
            ],
          ),
        ),
      ),
    );
  }
}
